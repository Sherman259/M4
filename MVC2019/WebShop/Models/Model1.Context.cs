﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebShop.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WebshopEntities : DbContext
    {
        public WebshopEntities()
            : base("name=WebshopEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Kategorije> Kategorije { get; set; }
        public virtual DbSet<KategorijeProizvodi> KategorijeProizvodi { get; set; }
        public virtual DbSet<Korisnici> Korisnici { get; set; }
        public virtual DbSet<MjereProizvoda> MjereProizvoda { get; set; }
        public virtual DbSet<Narudzbe> Narudzbe { get; set; }
        public virtual DbSet<NarudzbeDetalji> NarudzbeDetalji { get; set; }
        public virtual DbSet<Proizvodi> Proizvodi { get; set; }
    }
}
