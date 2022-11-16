using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Roles_DAL
    {
        #region Variables Privadas

        private byte _bIdRol, _bIdEstado;
        private string _sRol, _sDescripcion;

        #endregion

        #region Variables Públicas

        public byte bIdRol { get => _bIdRol; set => _bIdRol = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sRol { get => _sRol; set => _sRol = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
