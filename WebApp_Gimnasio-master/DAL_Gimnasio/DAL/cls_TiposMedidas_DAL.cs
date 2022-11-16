using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_TiposMedidas_DAL
    {
        #region Variables Privadas

        private byte _bIdTipoMedida, _bIdEstado;
        private short _sIdUnidadMedida;
        private string _sDescripcion;

        #endregion

        #region Variables Públicas

        public byte bIdTipoMedida { get => _bIdTipoMedida; set => _bIdTipoMedida = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public short sIdUnidadMedida { get => _sIdUnidadMedida; set => _sIdUnidadMedida = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
