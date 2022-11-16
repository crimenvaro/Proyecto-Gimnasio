using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Data;
using Gimnasio_DAL.BD;
using Gimnasio_BLL.BD;

namespace SVC.CONTRACTS
{
    public class BD_Gimnasio : INTERFACES.IBD_Gimnasio
    {
        public DataTable Get_DT_Param(DataTable DT_Param)
        {
            DT_Param = new DataTable("PARAMETROS");
            DT_Param.Columns.Add("Nom_Param"); //COLUMNA 0
            DT_Param.Columns.Add("Tipo_Dato_Param"); //COLUMNA 1
            DT_Param.Columns.Add("Valor_Param"); //COLUMNA 2

            return DT_Param;
        }

        public DataTable ListarFiltrar(string sNombreTabla, string sNombreSP, DataTable DT_Param)
        {
            cls_BD_Gimnasio_DAL Obj_BD_Gimnasio_DAL = new cls_BD_Gimnasio_DAL();
            cls_BD_Gimnasio_BLL Obj_BD_Gimnasio_BLL = new cls_BD_Gimnasio_BLL();

            Obj_BD_Gimnasio_DAL.SNomSP = sNombreSP;
            Obj_BD_Gimnasio_DAL.SNomTabla = sNombreTabla;
            Obj_BD_Gimnasio_DAL.DT_Parametros = DT_Param;

            Obj_BD_Gimnasio_BLL.ExecDataAdapter(ref Obj_BD_Gimnasio_DAL);

            if (Obj_BD_Gimnasio_DAL.SMsjErrorBD == string.Empty)
            {
                return Obj_BD_Gimnasio_DAL.DS.Tables[0];
            }
            else
            {
                return null;
            }
        }

        public string Ins_Upd_Delete(string sNombreSP, string sIndAxn, DataTable DT_Param)
        {
            cls_BD_Gimnasio_DAL Obj_BD_Gimnasio_DAL = new cls_BD_Gimnasio_DAL();
            cls_BD_Gimnasio_BLL Obj_BD_Gimnasio_BLL = new cls_BD_Gimnasio_BLL();

            Obj_BD_Gimnasio_DAL.SNomSP = sNombreSP;
            Obj_BD_Gimnasio_DAL.SIndAxn = sIndAxn;
            Obj_BD_Gimnasio_DAL.DT_Parametros = DT_Param;

            Obj_BD_Gimnasio_BLL.ExecCommand(ref Obj_BD_Gimnasio_DAL);

            if (Obj_BD_Gimnasio_DAL.SMsjErrorBD == string.Empty)
            {
                return Obj_BD_Gimnasio_DAL.SValorScalar;
            }
            else
            {
                return Obj_BD_Gimnasio_DAL.SMsjErrorBD;
            }
        }
    }
}
