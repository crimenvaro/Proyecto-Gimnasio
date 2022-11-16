using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Mediciones_DAL
    {
        #region Variables Privadas

        private long _lIdMedicion;
        private int _iIdCliente;
        private byte _bIdEstado, _bIdTipoMedida;
        private string _sMedidaValor, _sTipoMedidaDsc;
        private string _sFechaMedicion;

        #endregion

        #region Variables Públicas
        public long lIdMedicion { get => _lIdMedicion; set => _lIdMedicion = value; }
        public int iIdCliente { get => _iIdCliente; set => _iIdCliente = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bIdTipoMedida { get => _bIdTipoMedida; set => _bIdTipoMedida = value; }
        public string sMedidaValor { get => _sMedidaValor; set => _sMedidaValor = value; }
        public string sTipoMedidaDsc { get => _sTipoMedidaDsc; set => _sTipoMedidaDsc = value; }
        public string sFechaMedicion { get => _sFechaMedicion; set => _sFechaMedicion = value; }

        #endregion
    }
}
