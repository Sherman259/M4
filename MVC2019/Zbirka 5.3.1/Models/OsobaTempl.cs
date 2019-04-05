using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace Zbirka_5._3._1.Models
{
    public class OsobaTempl
    {
        public int Osobaid { get; set; }
        public string ime { get; set; }
        public string prezime { get; set; }
        public string Email { get; set; }

        public string mjestostanovanja { get; set; }
        public string spol { get; set; }
        public bool zaposlen { get; set; }
        public DateTime Datumrodjenja { get; set; }
        public string napomena { get; set; }
        public Adresa Adresaosobe { get; set; }


    }

}
