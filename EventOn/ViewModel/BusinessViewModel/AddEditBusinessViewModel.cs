using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.BusinessViewModel
{
    public class AddEditBusinessViewModel
    {
        public int? businessID { get; set; }

        public Business objectBusiness { get; set; }
        public bool tieneValor { get; set; }

        public List<User> ListUsers { get; set; }

        public List<Sector> ListSectors { get; set; }

        public AddEditBusinessViewModel()
        {
            objectBusiness = new Business();
        }

        public void cargarDatos(int? businessid)
        {

            EventOnEntities context = new EventOnEntities();
            this.ListSectors = context.Sectors.ToList();
            this.ListUsers = context.Users.ToList();

            tieneValor = false;
            if (businessid.HasValue)
            {
                Business objBusiness = context.Businesses.FirstOrDefault(x => x.idBusiness == businessid);
                this.businessID = businessid;
                objectBusiness.idBusiness= objBusiness.idBusiness;
                objectBusiness.businessName = objBusiness.businessName;
                objectBusiness.RUCNumber = objBusiness.RUCNumber;
                objectBusiness.businessPhone = objBusiness.businessPhone;
                objectBusiness.contactName = objBusiness.contactName;
                objectBusiness.contactPhone = objBusiness.contactPhone;
                objectBusiness.User = objBusiness.User;
                objectBusiness.Sector = objBusiness.Sector;
                tieneValor = true;
            }
        }
        public void RegistrarBusiness(Business _objBusiness)
        {
            EventOnEntities context = new EventOnEntities();
            _objBusiness.estado = "A";
            context.Businesses.Add(_objBusiness);
            context.SaveChanges();
        }
        public void ModificarBusiness(Business _objBusiness)
        {
            EventOnEntities context = new EventOnEntities();
            Business objBusiness = context.Businesses.FirstOrDefault(x => x.idBusiness == _objBusiness.idBusiness);
            objBusiness.businessName = _objBusiness.businessName;
            objBusiness.RUCNumber = _objBusiness.RUCNumber;
            objBusiness.businessPhone = _objBusiness.businessPhone;
            objBusiness.contactName = _objBusiness.contactName;
            objBusiness.contactPhone = _objBusiness.contactPhone;
            objBusiness.User = _objBusiness.User;
            objBusiness.Sector = _objBusiness.Sector;
            objBusiness.estado = "A";
            context.SaveChanges();

        }
        public void EliminarBusiness(int BusinessId)
        {
            EventOnEntities context = new EventOnEntities();
            Business objBusiness = context.Businesses.FirstOrDefault(x => x.idBusiness == BusinessId);
            objBusiness.estado = "I";
            context.SaveChanges();
        }
        public bool BusinessExiste(string _nombrebusiness)
        {
            EventOnEntities context = new EventOnEntities();
            Business objBusiness = context.Businesses.FirstOrDefault(x => x.businessName == _nombrebusiness);
            if (objBusiness != null) return true;
            return false;
        }
    }
}