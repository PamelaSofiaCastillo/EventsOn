using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EventOn.Models;
using EventOn.ViewModel.SectorsViewModel;
//using EventOn.ViewModel.EventsViewModel;
using EventOn.ViewModel.EventsViewModel;

namespace EventOn.Controllers
{
    public class EventsController : Controller
    {
        [Authorize]
        public ActionResult ListEvents()
        {
            ListEventsViewModel objViewModel = new ListEventsViewModel();
            return View(objViewModel);
        }
        [HttpPost]
        public ActionResult ListEvents(ListEventsViewModel objViewModel)
        {
            objViewModel.fill();
            return View(objViewModel);
        }
        [Authorize]
        public ActionResult AddEditEvent(int? eventid)
        {
            AddEditEventViewModel objViewModel = new AddEditEventViewModel();
            objViewModel.cargarDatos(eventid);
            return View(objViewModel);
        }

        [Authorize]
        [HttpPost]
        public ActionResult AddEditEvent(AddEditEventViewModel objViewModel)
        {
            try
            {

                if (objViewModel.tieneValor)
                {
                    objViewModel.objectEvent.idEvent = (int)objViewModel.eventID;
                    objViewModel.ModificarEvent(objViewModel.objectEvent);
                }
                else
                {
                    objViewModel.RegistrarEvento(objViewModel.objectEvent);
                }

                if (objViewModel.tieneValor)
                {
                    TempData["Mensaje"] = "Éxito! El evento se editó correctamente";
                }
                else
                {
                    TempData["Mensaje"] = "Éxito! El evento se agregó correctamente";
                }

                return RedirectToAction("ListEvents");
            }
            catch (Exception e)
            {
                TempData["MensajeError"] = "Error! " + e.Message.ToList();
                return View(objViewModel);
            }
        }

        [Authorize]
        public ActionResult DeleteEvento(int eventid)
        {
            AddEditEventViewModel objViewModel = new AddEditEventViewModel();
            try
            {
                objViewModel.EliminarEvent(eventid);
                TempData["Mensaje"] = "El evento se se eliminó correctamente";
                return RedirectToAction("ListEvents");
            }
            catch (Exception e)
            {
                TempData["MensajeError"] = "Error! " + e.Message.ToList();
                return RedirectToAction("ListEvents");
            }
        }
    }
}
