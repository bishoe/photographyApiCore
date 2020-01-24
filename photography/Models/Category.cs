using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace photography.Models
{
    public class Category
    {
        [Key]
        public int CategoeryId { get; set; }
        [Column(TypeName = "nvarchar(25)")]
        public string NameCategory { get; set; }
        [Column(TypeName = "datetime")]

        public DateTime CategoryDate { get; set; }
    }
}
