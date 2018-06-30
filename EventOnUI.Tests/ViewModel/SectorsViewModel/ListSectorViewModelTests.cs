using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EventOn.ViewModel.SectorsViewModel;

namespace EventOn.ViewModel.EventsViewModel.Tests
{
    [TestFixture()]
    public class ListSectorViewModelTests
    {

        [Test()]
        public void Fill()
        {
            ListSectorsViewModel objViewModel = new ListSectorsViewModel();
            Assert.AreNotEqual(0, objViewModel.ListSector.Count);
        }

        [Test()]
        public void FillBuscar()
        {
            ListSectorsViewModel objViewModel = new ListSectorsViewModel();
            objViewModel.Filtro = "999";
            objViewModel.fill();
            Assert.AreEqual(0, objViewModel.ListSector.Count);
        }

        [Test()]
        public void FillBuscarFlujoAlternativo()
        {
            ListSectorsViewModel objViewModel = new ListSectorsViewModel();
            objViewModel.Filtro = "assa7fs89a7f";
            objViewModel.fill();
            Assert.AreEqual(0, objViewModel.ListSector.Count);
        }

        
    }
}