using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_UnidadesMedida_DAL
    {
        #region Variables Privadas

        private short _sIdUnidadMedida;
        private byte _bIdEstado;
        private string _sDescripcion;

        #endregion

        #region Variables Públicas

        public short sIdUnidadMedida { get => _sIdUnidadMedida; set => _sIdUnidadMedida = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
