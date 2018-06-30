using EventOn.Models;
using EventOn.ViewModel.IndexViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace EventOn.Controllers
{
    public class HomeController : Controller
    {
        [Authorize]
        public ActionResult Index()
        {
            IndexValueViewModel objViewModel = new IndexValueViewModel();
            return View(objViewModel);
        }

        public ActionResult Login()
        {
            LoginViewModel objViewModel = new LoginViewModel();
            return View(objViewModel);
        }

        [HttpPost]
        public ActionResult Login(LoginViewModel objViewModel)
        {
            try
            {
                EventOnEntities context = new EventOnEntities();
                User objUsuario = context.Users
                    .FirstOrDefault(x => x.userName == objViewModel.userName && x.password == objViewModel.password);

                if (objUsuario == null)
                {
                    Console.WriteLine("ZAVAMON");
                    TempData["MensajeLogin"] = "Error! usuario y contraseña incorrectas";
                    return View(objViewModel);
                }
                FormsAuthentication.SetAuthCookie(objUsuario.userName, false);
                Session["objUsuario"] = objUsuario;

                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                //Console.WriteLine("ZAVAMON");
                TempData["MensajeLoginError"] = "Error! " + ex.Message.ToString();
                return View(objViewModel);
            }
        }

        [Authorize]
        public ActionResult CerrarSesion()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            LoginViewModel objViewModel = new LoginViewModel();
            return RedirectToAction("Login", "Home");
        }
    }
}