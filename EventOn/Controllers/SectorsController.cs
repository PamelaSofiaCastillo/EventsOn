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

namespace EventOn.Controllers
{
    public class SectorsController : Controller
    {
        [Authorize]
        public ActionResult ListSectors()
        {
            ListSectorsViewModel objViewModel = new ListSectorsViewModel();
            return View(objViewModel);
        }
        [HttpPost]
        public ActionResult ListSectors(ListSectorsViewModel objViewModel)
        {
            objViewModel.fill();
            return View(objViewModel);
        }
        [Authorize]
        public ActionResult AddEditSector(int? sectorid)
        {
            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            objViewModel.cargarDatos(sectorid);
            return View(objViewModel);
        }

        [Authorize]
        [HttpPost]
        public ActionResult AddEditSector(AddEditSectorViewModel objViewModel)
        {
            try
            {
               
                if (objViewModel.tieneValor)
                {
                    objViewModel.objectSector.idSector = (int)objViewModel.sectorID;
                    objViewModel.ModificarSector(objViewModel.objectSector);
                }
                else
                {
                    objViewModel.RegistrarSector(objViewModel.objectSector);
                }                

                if (objViewModel.tieneValor)
                {
                    TempData["Mensaje"] = "Éxito! El sector se editó correctamente";
                }
                else
                {
                    TempData["Mensaje"] = "Éxito! El sector se agregó correctamente";
                }

                return RedirectToAction("ListSectors");
            }
            catch(Exception e)
            {
                TempData["MensajeError"] = "Error! "+e.Message.ToList();
                return View(objViewModel);
            }
        }

        [Authorize]
        public ActionResult DeleteSector(int sectorid)
        {
            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            try
            {
                objViewModel.EliminarSector(sectorid);
                TempData["Mensaje"] = "El sector se se eliminó correctamente";
                return RedirectToAction("ListSectors");
            }
            catch(Exception e)
            {
                TempData["MensajeError"] = "Error! " + e.Message.ToList();
                return RedirectToAction("ListSectors");
            }
        }
    }
}
