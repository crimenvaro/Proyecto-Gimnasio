using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Estados_DAL
    {
        #region Variables Privadas

        private byte _bIdEstado;
        private string _sDescripcion, _sOpcion;

        #endregion

        #region Variables Públicas

        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }
        public string sOpcion { get => _sOpcion; set => _sOpcion = value; }

        #endregion
    }
}
