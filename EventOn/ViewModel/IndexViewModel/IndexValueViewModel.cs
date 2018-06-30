using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.IndexViewModel
{
    public class IndexValueViewModel
    {
        public int nroEvent { get; set; }
        public int nroBusiness { get; set; }
        public int nroSector { get; set; }
        public IndexValueViewModel()
        {
            EventOnEntities context = new EventOnEntities();
            nroBusiness = context.Businesses.Count();
            nroEvent = context.Events.Count();
            nroSector = context.Sectors.Count();
        }
    }
}