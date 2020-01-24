using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using photography.Models;

namespace photography.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class PhotosAlbumsController : ControllerBase
    {
        private readonly DbContextPhoto _context;

        public PhotosAlbumsController(DbContextPhoto context)
        {
            _context = context;
        }

        // GET: api/PhotosAlbums
        [HttpGet]
        public async Task<ActionResult<IEnumerable<PhotosAlbum>>> GetPhotosAlbum()
        {
            return await _context.photosAlbum.ToListAsync();
        }

        // GET: api/PhotosAlbums/5
        [HttpGet("{id}")]
        public async Task<ActionResult<PhotosAlbum>> GetPhotosAlbum(int id)
        {
            var photosAlbum = await _context.photosAlbum.FindAsync(id);

            if (photosAlbum == null)
            {
                return NotFound();
            }

            return photosAlbum;
        }

        // PUT: api/PhotosAlbums/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPhotosAlbum(int id, PhotosAlbum photosAlbum)
        {
            if (id != photosAlbum.PhotoId)
            {
                return BadRequest();
            }

            _context.Entry(photosAlbum).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PhotosAlbumExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/PhotosAlbums
        [HttpPost]
        public async Task<ActionResult<PhotosAlbum>> PostPhotosAlbum(PhotosAlbum photosAlbum)
        {
            _context.photosAlbum.Add(photosAlbum);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetPhotosAlbum", new { id = photosAlbum.PhotoId }, photosAlbum);
        }



        // DELETE: api/PhotosAlbums/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<PhotosAlbum>> DeletePhotosAlbum(int id)
        {
            var photosAlbum = await _context.photosAlbum.FindAsync(id);
            if (photosAlbum == null)
            {
                return NotFound();
            }

            _context.photosAlbum.Remove(photosAlbum);
            await _context.SaveChangesAsync();

            return photosAlbum;
        }

        private bool PhotosAlbumExists(int id)
        {
            return _context.photosAlbum.Any(e => e.PhotoId == id);
        }

        //List<PhotosAlbum> _photosAlbum = new List<PhotosAlbum>();
        //[ProducesDefaultResponseType(typeof(PhotosAlbum))]
        ////public IEnumerable<PhotosAlbum> Get(int id)
        ////{
        ////    string sConnString = "Data Source=.;Persist Security Info=False;" +
        ////        "Initial Catalog=photographyDb;User Id=sa;Password=123456;Connect Timeout=30;";

        ////    SqlConnection myConn = new SqlConnection(sConnString);


        ////    SqlCommand cmd = new SqlCommand();
        ////    cmd.Connection = myConn;

        ////    cmd.CommandText = "SELECT * FROM dbo.PhotosAlbum where CategoeryId =@CategoeryId";
        ////    cmd.Parameters.AddWithValue("@CategoeryId", id);
        ////    myConn.Open();

        ////    SqlDataReader reader = cmd.ExecuteReader();

        ////    //POPULATE THE LIST WITH DATA.
        ////    while (reader.Read())
        ////    {
        ////        _photosAlbum.Add(new PhotosAlbum
        ////        {
        ////            PhotoId = Convert.ToInt32(reader["PhotoId"].ToString()),
        ////            AlbumName = reader["AlbumName"].ToString()
        ////        });
        ////    }
        ////    myConn.Close();

        ////    return _photosAlbum;         // RETURN THE LIST.
        ////}
    }
}
