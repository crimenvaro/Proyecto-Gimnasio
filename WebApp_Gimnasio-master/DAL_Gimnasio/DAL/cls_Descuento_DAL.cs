using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Descuento_DAL
    {
        #region Variables Privadas

        private byte _bIdDescuento, _bIdEstado, _bPorcentaje;
        private string _sDescripcion;

        #endregion

        #region Variables Públicas

        public byte bIdDescuento { get => _bIdDescuento; set => _bIdDescuento = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bPorcentaje { get => _bPorcentaje; set => _bPorcentaje = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
