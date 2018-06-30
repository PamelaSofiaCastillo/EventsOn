using NUnit.Framework;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using EventOn.ViewModel.SectorsViewModel;
using EventOn.Models;

namespace EventOn.ViewModel.EventsViewModel.Tests
{
    [TestFixture()]

    public class AddEditSectorViewModelTests
    {
        [Test()]
        public void D_cargarDatos()
        {
            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            objViewModel.tieneValor = false;
            objViewModel.cargarDatos(null);
            Assert.False(objViewModel.tieneValor);
        }

        [Test()]
        public void B_SectorExiste()
        {
            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            Assert.False(objViewModel.SectorExiste("Agro"));
        }

        [Test()]
        public void SectorExisteFlujoAlternativo()
        {
            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            Assert.False(objViewModel.SectorExiste("fgfdgregerg"));
        }

        [Test()]
        public void A_RegistrarSector()
        {
            AddEditSectorViewModel a = new AddEditSectorViewModel();
            Sector objSector= new Sector();

            objSector.sectorName = "Test";
            objSector.estado = "A";
            
            a.RegistrarSector(objSector);
            Assert.True(!"0".Equals(objSector.sectorName));
        }

        [Test()]
        public void C_ModificarSector()
        {
            ListSectorsViewModel a = new ListSectorsViewModel();
            a.fill();
            Sector objSector = a.ListSector[a.ListSector.Count - 1];
            objSector.sectorName = "TestChange";

            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            objViewModel.ModificarSector(objSector);
            a.fill();
            Assert.True(a.ListSector[a.ListSector.Count - 1].sectorName.Equals("TestChange"));
        }

        [Test()]
        public void E_EliminarCurso()
        {
            ListSectorsViewModel a = new ListSectorsViewModel();
            a.fill();
            int codigo = a.ListSector[a.ListSector.Count - 1].idSector;
            Sector objSector = new Sector();
            objSector.idSector = codigo;
            AddEditSectorViewModel objViewModel = new AddEditSectorViewModel();
            objViewModel.EliminarSector(objSector.idSector);
            Assert.True(true);
        }
    }
}
    

