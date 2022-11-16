using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_RolesUsuario_DAL
    {
        #region Variables Privadas

        private int _iIdColaborador;
        private byte _bIdRol, _bIdEstado;

        #endregion

        #region Variables Públicas

        public int iIdColaborador { get => _iIdColaborador; set => _iIdColaborador = value; }
        public byte bIdRol { get => _bIdRol; set => _bIdRol = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }

        #endregion
    }
}
