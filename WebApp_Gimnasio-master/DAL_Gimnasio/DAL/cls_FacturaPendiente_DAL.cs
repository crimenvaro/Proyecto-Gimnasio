using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_FacturaPendiente_DAL
    {
        #region Variables Privadas

        private long _lIdEstadoPendiente;
        private string _sCedula, _sNombreFactura, _sNombreCliente;
        private double _dSubTotal, _dCondonacion, _dDescuento, _dImpuesto, _dTotal;

        #endregion

        #region Variables Públicas
        public long lIdEstadoPendiente { get => _lIdEstadoPendiente; set => _lIdEstadoPendiente = value; }        
        public string sCedula { get => _sCedula; set => _sCedula = value; }
        public string sNombreFactura { get => _sNombreFactura; set => _sNombreFactura = value; }
        public string sNombreCliente { get => _sNombreCliente; set => _sNombreCliente = value; }
        public double dDescuento { get => _dDescuento; set => _dDescuento = value; }
        public double dSubTotal { get => _dSubTotal; set => _dSubTotal = value; }
        public double dCondonacion { get => _dCondonacion; set => _dCondonacion = value; }
        public double dImpuesto { get => _dImpuesto; set => _dImpuesto = value; }
        public double dTotal { get => _dTotal; set => _dTotal = value; }

        #endregion
    }
}
