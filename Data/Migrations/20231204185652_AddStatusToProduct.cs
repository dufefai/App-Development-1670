using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace App_Development_1670.Data.Migrations
{
    public partial class AddStatusToProduct : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Status",
                table: "Book",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "Book");
        }
    }
}
