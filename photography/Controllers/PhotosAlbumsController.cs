using System;
using System.Collections.Generic;
 using System.Linq;
using System.Threading.Tasks;
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
        public async Task<ActionResult<IEnumerable<PhotosAlbum>>> GetphotosAlbum()
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
        [HttpPut("{id:int}")]
        public async Task<IActionResult> PutPhotosAlbum(int id, PhotosAlbum photosAlbum)
        {



            if (id != photosAlbum.PhotoId)
            {
                return BadRequest();
            }
            var db = _context.photosAlbum.FirstOrDefault(s => s.PhotoId.Equals(id));
            db.AlbumName = photosAlbum.AlbumName;
            db.AlbumTitle = photosAlbum.AlbumTitle;
            db.CategoeryId = photosAlbum.CategoeryId;

            //_context.Entry(photosAlbum).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PhotosAlbumExists(id))
                {
                    return NotFound(id);
                }
                else
                {
                    throw ;
                }
            }

            return NoContent( );
        }

        //[HttpPut("{id:int}")]
        //public async Task<IActionResult> pot(int id, PhotosAlbum photos)
        //{

        //    var db = _context.photosAlbum.FirstOrDefault(s => s.PhotoId.Equals(id));

        //    db.AlbumName = photos.AlbumName;
        //    db.AlbumTitle = photos.AlbumTitle;
        //    db.CategoeryId = photos.CategoeryId;
        //         try
        //    {
        //        await _context.SaveChangesAsync();
        //    }
        //    catch (DbUpdateConcurrencyException)
        //    {
        //        if (!PhotosAlbumExists(id))
        //        {
        //            return NotFound(id);
        //        }
        //        else
        //        {
        //            throw;
        //        }

        //    }
        //    return NoContent();

        //}
        // POST: api/PhotosAlbums
        [HttpPost]
        public async Task<ActionResult<PhotosAlbum>> PostPhotosAlbum(PhotosAlbum photosAlbum)
        {
            try
            {
                if (photosAlbum == null)
                {
                    return BadRequest("User object is null");
                }
                if (!ModelState.IsValid)
                {
                    return BadRequest("Invalid model object");
                }
                _context.Add(photosAlbum);
            await _context.SaveChangesAsync();
            return StatusCode(201);

            //return CreatedAtAction("GetPhotosAlbum", new { id = photosAlbum.PhotoId }, photosAlbum);
        }
                catch (Exception ex)
                {
                    return StatusCode(500, $"Internal server error: {ex}");
    }
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
    }
}
