using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
using System.ComponentModel.DataAnnotations;

namespace AdresarWCFService1.Models
{
    public class Kontakt

    {
        [DataMember]
        [Key]
        public int Id { get; set; }
        [DataMember]
        [Required]
        [StringLenght(25) ErrorMessage = "Ime ne smije biti veće od 25 znakova")]
        public string ime { get; set; }
        [DataMember]
        [Required]
        [StringLenght(25) ]
        public string Prezime { get; set; }

        [DataMember]
        [Required]
        [StringLenght(100)]
        public string Adresa { get; set; }


        [DataMember]
        [Required]
        [StringLenght(20)]
        public string Telefon { get; set; }


        [DataMember]
        [Required]
        [StringLenght(20)]
        public string Mobitel { get; set; }


        [DataMember]
        [Required]
        [StringLenght(20)]
        public string Email { get; set; }

        [DataMember]
        [Required]
        [StringLenght(20)]
        public string Napomena { get; set; }

        [DataMember]
        
      
        public bool Aktivan { get; set; }



    }
}

   
