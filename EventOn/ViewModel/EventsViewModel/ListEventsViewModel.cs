using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.SectorsViewModel
{
    public class ListEventsViewModel
    {
        public List<Event> ListEvents { get; set; }
        public string Filtro { get; set; }
        public ListEventsViewModel()
        {
            EventOnEntities context = new EventOnEntities();
            ListEvents = context.Events.Where(x => x.estado == "A").ToList();
        }
        public void fill()
        {
            EventOnEntities context = new EventOnEntities();
            if (!string.IsNullOrEmpty(Filtro)) ListEvents = context.Events
                    .Where(x => x.estado == "A" && x.name.ToUpper().Contains(Filtro.ToUpper()))
                    .ToList();
        }
    }
}