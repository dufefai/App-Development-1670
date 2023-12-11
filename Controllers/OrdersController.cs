using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using App_Development_1670.Data;
using Microsoft.AspNetCore.Identity;
using App_Development_1670.Models;
using Microsoft.AspNetCore.Authorization;

namespace App_Development_1670.Controllers
{
    [Authorize]
    public class OrdersController : Controller
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly UserManager<IdentityUser> _userManager;

        public OrdersController(ApplicationDbContext dbContext, UserManager<IdentityUser> userManager)
        {
            _dbContext = dbContext;
            _userManager = userManager;
        }

        [HttpPost]
        public async Task<IActionResult> CreateOrder()
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                var user = await _userManager.GetUserAsync(User);

                if (user != null)
                {
                    var dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                    Order order = new Order
                    {
                        UserId = user.Id,
                        OrderDate = DateTime.Now,
                        OrderItems = dataCart.Select(cartItem => new OrderItem
                        {
                            BookID = cartItem.Book.BookID,
                            Quantity = cartItem.Quantity,
                            Price = cartItem.Book.Price * (decimal)cartItem.Quantity
                        }).ToList()
                    };


                    _dbContext.Orders.Add(order);
                    _dbContext.SaveChanges();

                    HttpContext.Session.Remove("cart");

                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    return RedirectToAction("Login", "Account");
                }
            }
            else
            {
                return RedirectToAction("ListCart", "Products");
            }
        }
    }
}
