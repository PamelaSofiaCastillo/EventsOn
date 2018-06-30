using EventOn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventOn.ViewModel.SectorsViewModel
{
    public class AddEditSectorViewModel
    {
        public int? sectorID { get; set; }

        public Sector objectSector { get; set; }
        public bool tieneValor { get; set; }
        public AddEditSectorViewModel()
        {
            objectSector = new Sector();
        }

        public void cargarDatos(int? sectorid)
        {
            EventOnEntities context = new EventOnEntities();

            tieneValor = false;
            if (sectorid.HasValue)
            {
                Sector objSector = context.Sectors.FirstOrDefault(x => x.idSector == sectorid);
                this.sectorID = sectorid;
                objectSector.idSector = objSector.idSector;
                objectSector.sectorName = objSector.sectorName;
                tieneValor = true;
            }
        }
        public void RegistrarSector(Sector _objSector)
        {
            EventOnEntities context = new EventOnEntities();
            _objSector.estado = "A";
            context.Sectors.Add(_objSector);
            context.SaveChanges();
        }
        public void ModificarSector(Sector _objSector)
        {
            EventOnEntities context = new EventOnEntities();
            Sector objSector = context.Sectors.FirstOrDefault(x => x.idSector == _objSector.idSector);
            objSector.sectorName = _objSector.sectorName;
            objSector.estado = "A";
            context.SaveChanges();

        }
        public void EliminarSector(int sectorId)
        {
            EventOnEntities context = new EventOnEntities();
            Sector objSector = context.Sectors.FirstOrDefault(x => x.idSector == sectorId);
            objSector.estado = "I";
            context.SaveChanges();
        }
        public bool SectorExiste(string _nombresector)
        {
            EventOnEntities context = new EventOnEntities();
            Sector objSector = context.Sectors.FirstOrDefault(x => x.sectorName == _nombresector);
            if (objSector != null) return true;
            return false;
        }

       
    }
}