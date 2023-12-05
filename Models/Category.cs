namespace App_Development_1670.Models
{
    public class Category
    {
        public int CategoryID { get; set; }
        public string? Name { get; set; }
        public virtual ICollection<Book>? Book { get; set; }
    }
}
