using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Productos_DAL
    {
        #region Variables Privadas

        private byte _bIdProducto, _bIdEstado, _bIdDescuento;
        private string _sNombre, _sDescripcion, _sPeriodo;
        private decimal _dCosto;
        private int _iNumDias;
        private bool _bPlan;

        #endregion

        #region Variables Públicas

        public byte bIdProducto { get => _bIdProducto; set => _bIdProducto = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bIdDescuento { get => _bIdDescuento; set => _bIdDescuento = value; }
        public string sNombre { get => _sNombre; set => _sNombre = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }
        public string sPeriodo { get => _sPeriodo; set => _sPeriodo = value; }
        public decimal dCosto { get => _dCosto; set => _dCosto = value; }
        public int iNumDias { get => _iNumDias; set => _iNumDias = value; }
        public bool bPlan { get => _bPlan; set => _bPlan = value; }

        #endregion
    }
}
