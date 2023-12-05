using Microsoft.AspNetCore.Mvc.Rendering;

namespace App_Development_1670.Models
{
    public class BookCategoryViewModel
    {
        public List<Book>? Books { get; set; }
        public SelectList? Categories { get; set; }
        public string? BookCategory { get; set; }
        public string? SearchString { get; set; }
    }
}
