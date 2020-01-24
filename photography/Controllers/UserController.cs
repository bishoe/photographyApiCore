using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using photography.Models;

namespace photography.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
   
        public class UsersController : ControllerBase
        {
            private readonly DbContextPhoto _context;

            public UsersController(DbContextPhoto context)
            {
                _context = context;
            }

            [HttpGet]
            public IActionResult GetAllUsers()
            {
                try
                {
                    var users = _context.user.ToList();

                    return Ok(users);
                }
                catch (Exception ex)
                {
                    return StatusCode(500, $"Internal server error: {ex}");
                }
            }

            [HttpPost]
            public IActionResult CreateUser([FromBody]User user)
            {
                try
                {
                    if (user == null)
                    {
                        return BadRequest("User object is null");
                    }

                    if (!ModelState.IsValid)
                    {
                        return BadRequest("Invalid model object");
                    }

                    user.Id = Guid.NewGuid();
                    _context.Add(user);
                    _context.SaveChanges();

                    return StatusCode(201);
                }
                catch (Exception ex)
                {
                    return StatusCode(500, $"Internal server error: {ex}");
                }
            }
        }
    }

 
 