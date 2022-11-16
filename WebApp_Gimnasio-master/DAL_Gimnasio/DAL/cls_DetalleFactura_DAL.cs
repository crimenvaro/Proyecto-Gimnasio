using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_DetalleFactura_DAL
    {

        #region Variables Privadas

        private long _lIdDetalleFactura;
        private decimal _dIdFactura, _dSubTotal, _dCondonacion, _dDescuento, _dImpuesto, _dTotal;
        private byte _bIdProducto;
        private string _sComentario;
        private DateTime _dtInicioPlan, _dtFinPlan;

        #endregion

        #region Variables Públicas

        public long lIdDetalleFactura { get => _lIdDetalleFactura; set => _lIdDetalleFactura = value; }
        public decimal dIdFactura { get => _dIdFactura; set => _dIdFactura = value; }
        public decimal dSubTotal { get => _dSubTotal; set => _dSubTotal = value; }
        public decimal dCondonacion { get => _dCondonacion; set => _dCondonacion = value; }
        public decimal dDescuento { get => _dDescuento; set => _dDescuento = value; }
        public decimal dImpuesto { get => _dImpuesto; set => _dImpuesto = value; }
        public decimal dTotal { get => _dTotal; set => _dTotal = value; }
        public byte bIdProducto { get => _bIdProducto; set => _bIdProducto = value; }
        public string sComentario { get => _sComentario; set => _sComentario = value; }
        public DateTime dtInicioPlan { get => _dtInicioPlan; set => _dtInicioPlan = value; }
        public DateTime dtFinPlan { get => _dtFinPlan; set => _dtFinPlan = value; }

        #endregion

    }
}
