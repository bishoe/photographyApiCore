using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace photography.Models
{
    public class DbContextPhoto : DbContext 

    {
        //private readonly IUserResolverService _userResolverService;
        public DbContextPhoto(DbContextOptions <DbContextPhoto> options) : base(options)
        {

        }


        public DbSet<Category> Categorie { get; set; }

        public DbSet<PhotosAlbum> photosAlbum { get; set; }
        public DbSet<User> user { get; set; }

    }
}
