using App_Development_1670.Data;
using App_Development_1670.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Diagnostics;

namespace App_Development_1670.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            this._context = context;
        }

        public async Task<IActionResult> Index(string bookCategory, string searchString, string authorName)
        {
            var categoryQuery = _context.Book
                .OrderBy(m => m.Category.Name)
                .Select(m => m.Category.Name)
                .AsQueryable();

            var books = _context.Book.Select(m => m);

            if (!string.IsNullOrEmpty(searchString))
            {
                books = books.Where(s => s.Title!.Contains(searchString));
            }

            if (!string.IsNullOrEmpty(bookCategory))
            {
                books = books.Where(x => x.Category.Name == bookCategory);
            }

            if (!string.IsNullOrEmpty(authorName))
            {
                books = books.Where(x => x.Author == authorName);
            }

            var bookCategoryVM = new BookCategoryViewModel
            {
                Categories = new SelectList(await categoryQuery.Distinct().ToListAsync()),
                Books = await books.ToListAsync()
            };

            return View(bookCategoryVM);
        }

            public Book GetDetailProduct(int id)
        {
            var books = _context.Book.Find(id);
            return books;
        }

        public IActionResult AddCart(int id)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart == null)
            {
                var book = GetDetailProduct(id);
                List<Cart> listCart = new List<Cart>()
                {
                    new Cart
                    {
                        Book = book,
                        Quantity = 1
                    }
                };
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(listCart));
            }
            else
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                bool check = true;
                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Book != null && dataCart[i].Book.BookID == id)
                    {
                        dataCart[i].Quantity++;
                        check = false;
                    }
                }
                if (check)
                {
                    dataCart.Add(new Cart
                    {
                        Book = GetDetailProduct(id),
                        Quantity = 1
                    });
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
            }
            return RedirectToAction("Index");
        }

        public IActionResult AddMore(int id)
        {
            var cart = HttpContext.Session.GetString("cart");

                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Book != null && dataCart[i].Book.BookID == id)
                    {
                        dataCart[i].Quantity++;
                    }
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
            return RedirectToAction("ListCart");
        }
        public IActionResult ReduceOne(int id)
        {
            var cart = HttpContext.Session.GetString("cart");
            List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
            for (int i = 0; i < dataCart.Count; i++)
            {
                if (dataCart[i].Book != null && dataCart[i].Book.BookID == id)
                {
                    if(dataCart[i].Quantity>=2)
                    dataCart[i].Quantity--;
                    else
                    {
                        dataCart.RemoveAt(i);
                    }
                }
            }
            HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
            return RedirectToAction("ListCart");
        }
        [HttpPost]
        public IActionResult updateCart(int id, int quantity)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                if (quantity > 0)
                {
                    for (int i = 0; i < dataCart.Count; i++)
                    {
                        if (dataCart[i].Book.BookID == id)
                        {
                            dataCart[i].Quantity = quantity;
                        }
                    }
                    HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
                }
                var cart2 = HttpContext.Session.GetString("cart");
                return Ok(quantity);
            }
            return BadRequest();
        }

        public IActionResult DeleteCart(int id)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Book.BookID == id)
                    {
                        dataCart.RemoveAt(i);
                    }
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));

                return RedirectToAction(nameof(ListCart));
            }
            return RedirectToAction(nameof(Index));
        }

        public IActionResult ListCart()
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                if (dataCart.Count > 0)
                {
                    ViewBag.carts = dataCart;
                    return View();
                }
                else
                {
                    return RedirectToAction(nameof(NotFoundCart));
                }
            }

            return RedirectToAction(nameof(NotFoundCart));
        }

        public IActionResult NotFoundCart()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult SuccessfullyOrder()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}