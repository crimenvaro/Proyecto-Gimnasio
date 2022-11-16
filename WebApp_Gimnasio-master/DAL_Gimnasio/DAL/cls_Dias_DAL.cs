using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Dias_DAL
    {
        #region Variables Privadas

        private byte _bIdDia, _bIdEstado;
        private string _sDescripcion;

        #endregion

        #region Variables Públicas

        public byte bIdDia { get => _bIdDia; set => _bIdDia = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
