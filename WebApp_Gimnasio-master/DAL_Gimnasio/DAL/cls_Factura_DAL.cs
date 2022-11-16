using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Factura_DAL
    {
        #region Variables Privadas

        private long _lIdFactura, _lIdDetalleFactura;
        private int _iIdCliente;
        private byte _bTipoPago, _bEstado;
        private string _sNombre, _sComentario, _sDescTipoPago;
        private double _dSubTotal, _dCondonacion, _dDescuento, _dImpuesto, _dTotal;

        #endregion

        #region Variables Públicas
        public long lIdFactura { get => _lIdFactura; set => _lIdFactura = value; }
        public long lIdDetalleFactura { get => _lIdDetalleFactura; set => _lIdDetalleFactura = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public byte bTipoPago { get => _bTipoPago; set => _bTipoPago = value; }
        public byte bEstado { get => _bEstado; set => _bEstado = value; }
        public string sNombre { get => _sNombre; set => _sNombre = value; }
        public string sComentario { get => _sComentario; set => _sComentario = value; }
        public double dDescuento { get => _dDescuento; set => _dDescuento = value; }
        public double dSubTotal { get => _dSubTotal; set => _dSubTotal = value; }
        public double dCondonacion { get => _dCondonacion; set => _dCondonacion = value; }
        public double dImpuesto { get => _dImpuesto; set => _dImpuesto = value; }
        public double dTotal { get => _dTotal; set => _dTotal = value; }
        public string sDescTipoPago { get => _sDescTipoPago; set => _sDescTipoPago = value; }

        #endregion

    }
}
