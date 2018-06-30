using EventOn.ViewModel.SectorsViewModel;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EventOnUI.Tests.ViewModel.EventsViewModel
{
    [TestFixture()]
    class ListEventViewModelTests
    {
        [Test()]
        public void Fill()
        {
            ListEventsViewModel objViewModel = new ListEventsViewModel();
            Assert.AreNotEqual(0, objViewModel.ListEvents.Count);
        }

        [Test()]
        public void FillBuscar()
        {
            ListEventsViewModel objViewModel = new ListEventsViewModel();
            objViewModel.Filtro = "999";
            objViewModel.fill();
            Assert.AreEqual(0, objViewModel.ListEvents.Count);
        }

        [Test()]
        public void FillBuscarFlujoAlternativo()
        {
            ListEventsViewModel objViewModel = new ListEventsViewModel();
            objViewModel.Filtro = "assa7fs89a7f";
            objViewModel.fill();
            Assert.AreEqual(0, objViewModel.ListEvents.Count);
        }
    }
}
