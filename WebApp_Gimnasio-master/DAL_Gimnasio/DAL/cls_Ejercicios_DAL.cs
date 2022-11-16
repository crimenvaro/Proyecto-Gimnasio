using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Ejercicios_DAL
    {
        #region Variables Privadas

        private int _iIdEjercicio;
        private byte _bIdEstado;
        private string _sNombreEjercicio, _sGrupoMuscular, _sDescripcion;

        #endregion

        #region Variables Públicas

        public int iIdEjercicio { get => _iIdEjercicio; set => _iIdEjercicio = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public string sNombreEjercicio { get => _sNombreEjercicio; set => _sNombreEjercicio = value; }
        public string sGrupoMuscular { get => _sGrupoMuscular; set => _sGrupoMuscular = value; }
        public string sDescripcion { get => _sDescripcion; set => _sDescripcion = value; }

        #endregion
    }
}
