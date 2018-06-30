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
    class ListBusinessViewModelTests
    {
        [Test()]
        public void Fill()
        {
            ListBusinessViewModel objViewModel = new ListBusinessViewModel();
            Assert.AreNotEqual(0, objViewModel.ListBusiness.Count);
        }

        [Test()]
        public void FillBuscar()
        {
            ListBusinessViewModel objViewModel = new ListBusinessViewModel();
            objViewModel.Filtro = "999";
            objViewModel.fill();
            Assert.AreEqual(0, objViewModel.ListBusiness.Count);
        }

        [Test()]
        public void FillBuscarFlujoAlternativo()
        {
            ListBusinessViewModel objViewModel = new ListBusinessViewModel();
            objViewModel.Filtro = "assa7fs89a7f";
            objViewModel.fill();
            Assert.AreEqual(0, objViewModel.ListBusiness.Count);
        }
    }
}
