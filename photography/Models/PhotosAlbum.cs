using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace photography.Models
{
    public class PhotosAlbum
    {
 
        [Required]
        [Key]
         public int PhotoId { get; set; }
        
        public int CategoeryId { get; set; }
        [Column(TypeName = "nvarchar(50)")]
        public string AlbumName { get; set; }
        [Column(TypeName = "nvarchar(max)")]
        public string AlbumTitle { get; set; }
        [Column(TypeName = "varchar(50)")]

        #region Image

        //ImageNameO =ImageNameOne 
        // ImageNameFi = ImageNameFive ....etc
        public string ImageNameO { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNameT { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNameTh { get; set; }

        [Column(TypeName = "varchar(140)")]

        public string ImageNameF { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNameFi { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNameS { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNameSe { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNamE { get; set; }
        [Column(TypeName = "varchar(140)")]

        public string ImageNameN { get; set; }
        [Column(TypeName = "varchar(140)")]

        #endregion
        public string ImageNameTe { get; set; }

    }
}
