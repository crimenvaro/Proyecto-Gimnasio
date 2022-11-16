using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Departamentos_DAL
    {
        #region Variables Privadas

        private byte _bIdDepartamento, _bIdEstado;
        private string _sDepartamento;

        #endregion

        #region Variables Públicas
        
        public byte bIdDepartamento { get => _bIdDepartamento; set => _bIdDepartamento = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDepartamento { get => _sDepartamento; set => _sDepartamento = value; }

        #endregion
    }
}
