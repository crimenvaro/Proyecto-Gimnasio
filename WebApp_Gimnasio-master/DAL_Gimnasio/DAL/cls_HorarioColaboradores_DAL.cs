using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Gimnasio.DAL
{
    public class cls_HorarioColaboradores_DAL
    {

        #region Variables Privadas

        private int _iIdHorarioColaborador, _iIdColaborador;
        private short _sIdTurno;
        private byte _bIdEstado, _bIdDia;

        #endregion

        #region Variables Públicas
        public int iIdHorarioColaborador { get => _iIdHorarioColaborador; set => _iIdHorarioColaborador = value; }
        public int iIdColaborador { get => _iIdColaborador; set => _iIdColaborador = value; }
        public short sIdTurno { get => _sIdTurno; set => _sIdTurno = value; }
        public byte bIdEstado { get => _bIdEstado; set => _bIdEstado = value; }
        public byte bIdDia { get => _bIdDia; set => _bIdDia = value; }

        #endregion

    }
}
