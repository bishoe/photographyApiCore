using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using photography.Models;

namespace photography.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoadCategoryController : ControllerBase
    {
        //// GET: api/LoadCategory
        //[HttpGet]
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        // GET: api/LoadCategory/5
        //[HttpGet("{id}", Name = "Get")]
        //public string Get(int id)
        //{
        //    return "value";
        //}
        List<Category> _Category = new List<Category>();

 
        [ProducesDefaultResponseType(typeof(Category))]
        public IEnumerable<Category> Get()
        {
            string sConnString = "Data Source=.;Persist Security Info=False;" +
                "Initial Catalog=photographyDb;User Id=sa;Password=123456;Connect Timeout=30;";

            SqlConnection myConn = new SqlConnection(sConnString);


            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myConn;

            cmd.CommandText = "SELECT * FROM dbo.Categorie";
            //cmd.Parameters.AddWithValue("@CategoeryId", id);
            myConn.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            //POPULATE THE LIST WITH DATA.
            while (reader.Read())
            {
                _Category.Add(new Category
                {
                    CategoeryId = Convert.ToInt32(reader["CategoeryId"].ToString()),
                    NameCategory = reader["NameCategory"].ToString()
                });
            }
            myConn.Close();

            return _Category;         // RETURN THE LIST.
        }

        // POST: api/LoadCategory
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/LoadCategory/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
