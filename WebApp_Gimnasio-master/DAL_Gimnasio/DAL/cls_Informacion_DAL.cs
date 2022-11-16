using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_Informacion_DAL
    {
        #region Variables Privadas

        private int _iIdInformacion, _iIdCedulaJuridica, _iTelefono, _iAforo;
        private byte _bIdEstado, _bDiasGracia;
        private string _sNombre, _sUbicacion, _sCorreo;

        #endregion

        #region Variables Públicas
        public int iIdCedulaJuridica { get => _iIdCedulaJuridica; set => _iIdCedulaJuridica = value; }
        public int iTelefono { get => _iTelefono; set => _iTelefono = value; }
        public int iAforo { get => _iAforo; set => _iAforo = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bDiasGracia { get => _bDiasGracia; set => _bDiasGracia = value; }
        public string sNombre { get => _sNombre; set => _sNombre = value; }
        public string sUbicacion { get => _sUbicacion; set => _sUbicacion = value; }
        public string sCorreo { get => _sCorreo; set => _sCorreo = value; }
        public int iIdInformacion { get => _iIdInformacion; set => _iIdInformacion = value; }

        #endregion
    }
}
