using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using photography.Models;
using Microsoft.EntityFrameworkCore;
using System.Data.SqlClient;

namespace photography.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class _SelectAbumByIdController : ControllerBase
    {
        private readonly DbContextPhoto _context;

        public _SelectAbumByIdController(DbContextPhoto context)
        {
            _context = context;

        }
        [HttpGet("{id}")]
        //public async Task<PhotosAlbum>GetSelectAbumById(int CategoeryId)
        public async Task<List<PhotosAlbum>> GetPhotosAlbum(int id)

        {

            var CategoeryId = new SqlParameter("@CategoeryId", id); ;
            //var param = new SqlParameter("@CategoeryId", CategoeryId);

            //var photos = _context.photosAlbum.FromSql("_SelectAbumById @CategoeryId", new SqlParameter("@CategoeryId", CategoeryId));

            //return photos;
            //var resu =    (from cat in _context.Categorie join Photo in _context.photosAlbum on cat.CategoeryId equals Photo.CategoeryId where cat.CategoeryId ==2 select Photo.AlbumName).ToList();
            List<PhotosAlbum> photosAlbums =
                _context.photosAlbum.FromSql("_SelectAbumById @CategoeryId", CategoeryId).ToList();
            return photosAlbums;
        }

    }
}