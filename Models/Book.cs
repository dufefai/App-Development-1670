using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace App_Development_1670.Models
{
    public class Book
    {
        public int BookID { get; set; }
        [Required]
        [StringLength(60, MinimumLength = 3)]
        public string? Title { get; set; }
        public string? Author { get; set; }
        public string? UrlImage { get; set; }
        public string? Description { get; set; }
        [Range(1, 1000)]
        public decimal Price { get; set; }
        [Range(1, 5)]
        public string? Rating { get; set; }
        public string? Status { get; set; }
        public int CategoryID { get; set; }
        [ForeignKey("CategoryID")]
        public virtual Category? Category { get; set; }
    }
}
