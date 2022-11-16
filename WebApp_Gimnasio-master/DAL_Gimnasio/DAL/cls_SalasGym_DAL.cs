using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_SalasGym_DAL
    {
        #region Variables Privadas

        private byte _bIdSalasGym, _bIdEstado;
        private string _sDescripSalasGym;

        #endregion

        #region Variables Públicas

        public byte bIdSalasGym { get => _bIdSalasGym; set => _bIdSalasGym = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sDescripSalasGym { get => _sDescripSalasGym; set => _sDescripSalasGym = value; }

        #endregion
    }
}
