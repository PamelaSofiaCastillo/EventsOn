using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.SectorsViewModel
{
    public class ListSectorsViewModel
    {
        public List<Sector> ListSector { get; set; }
        public string Filtro { get; set; }
        public ListSectorsViewModel()
        {
            EventOnEntities context = new EventOnEntities();
            ListSector = context.Sectors.Where(x => x.estado == "A").ToList();
        }
        public void fill()
        {
            EventOnEntities context = new EventOnEntities();
            if (!string.IsNullOrEmpty(Filtro)) ListSector = context.Sectors
                    .Where(x => x.estado == "A" && x.sectorName.ToUpper().Contains(Filtro.ToUpper()))
                    .ToList();
        }
    }
}