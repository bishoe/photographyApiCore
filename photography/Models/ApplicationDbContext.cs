//using Microsoft.AspNetCore.Identity;
//using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
//using Microsoft.EntityFrameworkCore;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Threading.Tasks;

//namespace photography.Models
//{
//    public class ApplicationDbContext : IdentityDbContext
//    {

//        public ApplicationDbContext(DbContextOptions<ApplicationDbContext>options): base(options)
//        {
//        }

//       // public DbSet<ApplicationUser> ApplicationUser { get; set; }
//        protected override void OnModelCreating(ModelBuilder modelBuilder)
//        {
//            base.OnModelCreating(modelBuilder);
//            //AspNetUsers -> User
//            modelBuilder.Entity<ApplicationUserModel>()
//                .ToTable("User");
//            //AspNetRoles -> Role
//            modelBuilder.Entity<IdentityRole>()
//                .ToTable("Role");
//            //AspNetUserRoles -> UserRole
//            modelBuilder.Entity<IdentityUserRole<string>>()
//                .ToTable("UserRole");
//            //AspNetUserClaims -> UserClaim
//            modelBuilder.Entity<IdentityUserClaim<string>>()
//                .ToTable("UserClaim");
//            //AspNetUserLogins -> UserLogin
//            modelBuilder.Entity<IdentityUserLogin<string>>()
//                .ToTable("UserLogin");
//        }

//    }
//}
