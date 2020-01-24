using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace photography.Migrations
{
    public partial class AllTable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Categorie",
                columns: table => new
                {
                    CategoeryId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    NameCategory = table.Column<string>(type: "nvarchar(25)", nullable: true),
                    CategoryDate = table.Column<DateTime>(type: "datetime", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categorie", x => x.CategoeryId);
                });

            migrationBuilder.CreateTable(
                name: "photosAlbum",
                columns: table => new
                {
                    PhotoId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    CategoeryId = table.Column<int>(nullable: false),
                    AlbumName = table.Column<string>(type: "nvarchar(50)", nullable: true),
                    AlbumTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ImageNameO = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameT = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameTh = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameF = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameFi = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameS = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameSe = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNamE = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameN = table.Column<string>(type: "varchar(50)", nullable: true),
                    ImageNameTe = table.Column<string>(type: "varchar(50)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_photosAlbum", x => x.PhotoId);
                });

            migrationBuilder.CreateTable(
                name: "user",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Name = table.Column<string>(nullable: false),
                    Address = table.Column<string>(nullable: false),
                    ImgPath = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_user", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Categorie");

            migrationBuilder.DropTable(
                name: "photosAlbum");

            migrationBuilder.DropTable(
                name: "user");
        }
    }
}
