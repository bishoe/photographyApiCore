using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace photography.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UploadController : ControllerBase

    {
        //public IFormFileCollection  sss;

        [HttpPost, DisableRequestSizeLimit]

        public IActionResult Upload()
        {
            //try
            //{

                var file = Request.Form.Files;
                var folderName = Path.Combine("Resources", "Images");
                var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), folderName);
                var dbpaths = new List<string>();
                foreach (var item in file)
                {
                    if (item.Length > 0)
                    {
                        var fileName = ContentDispositionHeaderValue.Parse(item.ContentDisposition).FileName.Trim('"');
                        var newFilename = Guid.NewGuid().ToString() + fileName;
                        var fullPath = Path.Combine(pathToSave, newFilename);
                        var dbPath = Path.Combine( newFilename);
                        dbpaths.Add(dbPath);
                        using (var stream = new FileStream(fullPath, FileMode.Create))
                        {
                            item.CopyTo(stream);
                        }

                    }
                    else
                    {
                        return BadRequest();
                    }

                }
                var dbpathsasstring = string.Join(",", dbpaths);
                return Ok(new { dbpathsasstring });

            }
            //catch (Exception ex)
            //{
            //    return StatusCode(500, "Internal server error");
            //}
        }
    }



//}




 

 