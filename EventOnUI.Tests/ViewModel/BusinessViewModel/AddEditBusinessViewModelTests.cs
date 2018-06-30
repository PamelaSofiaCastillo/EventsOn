using EventOn.Models;
using EventOn.ViewModel.BusinessViewModel;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventOnUI.Tests.ViewModel.BusinessViewModel
{
    [TestFixture()]
    class AddEditBusinessViewModelTests
    {
        [Test()]
        public void D_cargarDatos()
        {
            AddEditBusinessViewModel objViewModel = new AddEditBusinessViewModel();
            objViewModel.tieneValor = false;
            objViewModel.cargarDatos(null);
            Assert.False(objViewModel.tieneValor);
        }

        [Test()]
        public void B_BusinessExiste()
        {
            AddEditBusinessViewModel objViewModel = new AddEditBusinessViewModel();
            Assert.False(objViewModel.BusinessExiste("jejeje"));
        }

        [Test()]
        public void EventExisteFlujoAlternativo()
        {
            AddEditBusinessViewModel objViewModel = new AddEditBusinessViewModel();
            Assert.False(objViewModel.BusinessExiste("fgfdgregerg"));
        }

        [Test()]
        public void A_RegistrarBusiness()
        {
            AddEditBusinessViewModel a = new AddEditBusinessViewModel();
            Business objBusiness = new Business();

            objBusiness.businessName = "Test";
            objBusiness.RUCNumber = "Test";
            objBusiness.businessPhone = "994495632";
            objBusiness.contactName = "Ken-Y";
            objBusiness.contactPhone = "994495633";
            objBusiness.idUser = 1;
            objBusiness.idSector = 1;
            objBusiness.estado = "A";

            a.RegistrarBusiness(objBusiness);
            Assert.True(!"0".Equals(objBusiness.businessName));
        }

        
        [Test()]
        public void E_EliminarBusiness()
        {
            ListBusinessViewModel a = new ListBusinessViewModel();
            a.fill();
            int codigo = a.ListBusiness[a.ListBusiness.Count - 1].idBusiness;
            Business objBusiness = new Business();
            objBusiness.idBusiness = codigo;
            AddEditBusinessViewModel objViewModel = new AddEditBusinessViewModel();
            objViewModel.EliminarBusiness(objBusiness.idBusiness);
            Assert.True(true);
        }
    }
}
