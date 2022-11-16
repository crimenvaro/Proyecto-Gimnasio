using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_CategoriaEquipos_DAL
    {
        #region Variables Privadas

        private byte _bIdCatEquipos, _bIdEstado;
        private string _sDescripcion;

        #endregion

        #region Variables Públicas
        public byte bIdCatEquipos { get => _bIdCatEquipos; set => _bIdCatEquipos = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
