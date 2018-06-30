using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EventOn.Models;
using EventOn.ViewModel.BusinessViewModel;

namespace EventOn.Controllers
{
    public class BusinessController : Controller
    {
        [Authorize]
        public ActionResult ListBusiness()
        {
            ListBusinessViewModel objViewModel = new ListBusinessViewModel();
            return View(objViewModel);
        }
        [HttpPost]
        public ActionResult ListBusiness(ListBusinessViewModel objViewModel)
        {
            objViewModel.fill();
            return View(objViewModel);
        }
        [Authorize]
        public ActionResult AddEditBusiness(int? businessid)
        {
            AddEditBusinessViewModel objViewModel = new AddEditBusinessViewModel();
            objViewModel.cargarDatos(businessid);
            return View(objViewModel);
        }

        [Authorize]
        [HttpPost]
        public ActionResult AddEditBusiness(AddEditBusinessViewModel objViewModel)
        {
            try
            {
                if (objViewModel.tieneValor)
                {
                    objViewModel.objectBusiness.idBusiness = (int)objViewModel.businessID;
                    objViewModel.ModificarBusiness(objViewModel.objectBusiness);
                }
                else
                {
                    objViewModel.RegistrarBusiness(objViewModel.objectBusiness);
                }

                if (objViewModel.tieneValor)
                {
                    TempData["Mensaje"] = "Éxito! El evento se editó correctamente";
                }
                else
                {
                    TempData["Mensaje"] = "Éxito! El evento se agregó correctamente";
                }

                return RedirectToAction("ListBusiness");
            }
            catch (Exception e)
            {
                TempData["MensajeError"] = "Error! " + e.Message.ToList();
                return View(objViewModel);
            }
        }

        [Authorize]
        public ActionResult DeleteBusiness(int businessid)
        {
            AddEditBusinessViewModel objViewModel = new AddEditBusinessViewModel();
            try
            {
                objViewModel.EliminarBusiness(businessid);
                TempData["Mensaje"] = "El negocio se se eliminó correctamente";
                return RedirectToAction("ListBusiness");
            }
            catch (Exception e)
            {
                TempData["MensajeError"] = "Error! " + e.Message.ToList();
                return RedirectToAction("ListBusiness");
            }
        }
    }
}
