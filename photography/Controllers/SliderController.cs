using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
 using Microsoft.AspNetCore.Mvc;
using photography.Models;
using Microsoft.EntityFrameworkCore;

namespace photography.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SliderController : ControllerBase
    {
        private readonly DbContextPhoto _context;

        public SliderController(DbContextPhoto context)
        {
            _context = context;
        }
        //public string items = "SELECT TOP (1) [t0].*FROM[photosAlbum] AS[t0]WHERE[t0].[Date] = ((SELECT MAX([t1].[PhotoId])FROM[photosAlbum] AS[t1]";
 

        [HttpGet]
        public async Task <IEnumerable <PhotosAlbum>> GetSlider()
        {
            var blogs = _context.photosAlbum
   .FromSql("EXECUTE dbo._SPSlider")
   .ToList();
            return blogs;


        }
    }
}