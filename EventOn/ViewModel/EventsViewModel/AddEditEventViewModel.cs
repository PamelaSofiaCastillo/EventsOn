using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.EventsViewModel
{
    public class AddEditEventViewModel
    {
        public int? eventID { get; set; }

        public Event objectEvent { get; set; }
        public bool tieneValor { get; set; }

        public List<Business> ListBusiness { get; set; }

        public List<Category> ListCategory { get; set; }

        public AddEditEventViewModel()
        {
            objectEvent = new Event();
        }

        public void cargarDatos(int? eventid)
        {

            EventOnEntities context = new EventOnEntities();
            this.ListBusiness = context.Businesses.ToList();
            this.ListCategory = context.Categories.ToList();

            tieneValor = false;
            if (eventid.HasValue)
            {
                Event objEvent = context.Events
                    .Include("Business")
                    .Include("Category")
                    .FirstOrDefault(x => x.idEvent == eventid);

                this.eventID = eventid;
                objectEvent.idEvent = objEvent.idEvent;
                objectEvent.name = objEvent.name;
                objectEvent.place = objEvent.place;
                objectEvent.date = objEvent.date;
                objectEvent.Business = objEvent.Business;
                objectEvent.Category = objEvent.Category;
                tieneValor = true;
            }
        }
        public void RegistrarEvento(Event _objEvent)
        {
            EventOnEntities context = new EventOnEntities();
            _objEvent.estado = "A";
            context.Events.Add(_objEvent);
            context.SaveChanges();
        }
        public void ModificarEvent(Event _objEvent)
        {
            EventOnEntities context = new EventOnEntities();
            Event objEvent = context.Events.FirstOrDefault(x => x.idEvent == _objEvent.idEvent);
            objEvent.name = _objEvent.name;
            objEvent.place = _objEvent.place;
            objEvent.date = _objEvent.date;
            objEvent.Business = _objEvent.Business;
            objEvent.Category = _objEvent.Category;

            objEvent.estado = "A";
            context.SaveChanges();
        }
        public void EliminarEvent(int EventId)
        {
            EventOnEntities context = new EventOnEntities();
            Event objEvent = context.Events.FirstOrDefault(x => x.idEvent == EventId);
            objEvent.estado = "I";
            context.SaveChanges();
        }
        public bool EventExiste(string _nombreevento)
        {
            EventOnEntities context = new EventOnEntities();
            Event objEvent = context.Events.FirstOrDefault(x => x.name == _nombreevento);
            if (objEvent != null) return true;
            return false;
        }
    }
}