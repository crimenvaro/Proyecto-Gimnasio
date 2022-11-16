using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_TipoPago_DAL
    {
        #region Variables Privadas

        private byte _bIdTipoPago, _bIdEstado;
        private string _sDescripTipoPago;
        private bool _bRequiereAprobacion;

        #endregion

        #region Variables Públicas

        public byte bIdTipoPago { get => _bIdTipoPago; set => _bIdTipoPago = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDescripTipoPago { get => _sDescripTipoPago; set => _sDescripTipoPago = value; }
        public bool bRequiereAprobacion { get => _bRequiereAprobacion; set => _bRequiereAprobacion = value; }

        #endregion
    }
}
