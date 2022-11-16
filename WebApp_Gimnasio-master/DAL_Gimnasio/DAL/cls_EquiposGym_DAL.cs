using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_EquiposGym_DAL
    {
        #region Variables Privadas

        private short _sIdEquipo;
        private byte _bIdCatEquipos, _bIdSalasGym, _bIdEstado;
        private string _sNombreEquipo, _sDescripEquipo, _sCategoriaDsc, _sSalaDsc;

        #endregion

        #region Variables Públicas
        public short sIdEquipo { get => _sIdEquipo; set => _sIdEquipo = value; }
        public byte bIdCatEquipos { get => _bIdCatEquipos; set => _bIdCatEquipos = value; }
        public byte bIdSalasGym { get => _bIdSalasGym; set => _bIdSalasGym = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sNombreEquipo { get => _sNombreEquipo; set => _sNombreEquipo = value; }
        public string sDescripEquipo { get => _sDescripEquipo; set => _sDescripEquipo = value; }
        public string sCategoriaDsc { get => _sCategoriaDsc; set => _sCategoriaDsc = value; }
        public string sSalaDsc { get => _sSalaDsc; set => _sSalaDsc = value; }

        #endregion

    }
}
