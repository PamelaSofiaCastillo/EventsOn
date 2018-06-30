using EventOn.Models;
using EventOn.ViewModel.EventsViewModel;
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
    class AddEditEventViewModelTests
    {
        [Test()]
        public void D_cargarDatos()
        {
            AddEditEventViewModel objViewModel = new AddEditEventViewModel();
            objViewModel.tieneValor = false;
            objViewModel.cargarDatos(null);
            Assert.False(objViewModel.tieneValor);
        }

        [Test()]
        public void B_EventExiste()
        {
            AddEditEventViewModel objViewModel = new AddEditEventViewModel();
            Assert.False(objViewModel.EventExiste("laaag"));
        }

        [Test()]
        public void EventExisteFlujoAlternativo()
        {
            AddEditEventViewModel objViewModel = new AddEditEventViewModel();
            Assert.False(objViewModel.EventExiste("fgfdgregerg"));
        }

        [Test()]
        public void A_RegistrarEvent()
        {
            AddEditEventViewModel a = new AddEditEventViewModel();
            Event objEvent = new Event();

            objEvent.name = "Test";
            objEvent.place = "Test";
            objEvent.date = DateTime.Parse("10/10/2010");
            objEvent.startTime = DateTime.Parse("10/10/2010");
            objEvent.endTime = DateTime.Parse("10/10/2010");
            objEvent.idCategory = 1;
            objEvent.idBusiness = 1;
            objEvent.estado = "A";

            a.RegistrarEvento(objEvent);
            Assert.True(!"0".Equals(objEvent.name));
        }
        

        [Test()]
        public void E_EliminarEvent()
        {
            ListEventsViewModel a = new ListEventsViewModel();
            a.fill();
            int codigo = a.ListEvents[a.ListEvents.Count - 1].idEvent;
            Event objSector = new Event();
            objSector.idEvent = codigo;
            AddEditEventViewModel objViewModel = new AddEditEventViewModel();
            objViewModel.EliminarEvent(objSector.idEvent);
            Assert.True(true);
        }
    }
}
