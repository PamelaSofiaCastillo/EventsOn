using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.BusinessViewModel
{
    public class ListBusinessViewModel
    {
        public List<Business> ListBusiness { get; set; }
        public string Filtro { get; set; }
        public ListBusinessViewModel()
        {
            EventOnEntities context = new EventOnEntities();
            ListBusiness = context.Businesses.Where(x => x.estado == "A").ToList();
        }
        public void fill()
        {
            EventOnEntities context = new EventOnEntities();
            if (!string.IsNullOrEmpty(Filtro)) ListBusiness = context.Businesses
                    .Where(x => x.estado == "A" && x.businessName.ToUpper().Contains(Filtro.ToUpper()))
                    .ToList();
        }
    }
}