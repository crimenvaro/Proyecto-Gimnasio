using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Gimnasio_DAL.BD;

namespace Gimnasio_BLL.BD
{
    public class cls_BD_Gimnasio_BLL
    {
        public void ExecDataAdapter(ref cls_BD_Gimnasio_DAL Obj_BD_Gimnasio_DAL)
        {
            try
            {
                Obj_BD_Gimnasio_DAL.Obj_CNX = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL_AUT"].ToString());

                if (Obj_BD_Gimnasio_DAL.Obj_CNX.State == ConnectionState.Closed)
                {
                    Obj_BD_Gimnasio_DAL.Obj_CNX.Open();
                }

                Obj_BD_Gimnasio_DAL.Obj_DAP = new SqlDataAdapter(Obj_BD_Gimnasio_DAL.SNomSP, // nombre del store procedure que debe ejecutar en la BD
                                                        Obj_BD_Gimnasio_DAL.Obj_CNX); // conexion a la BD previamente costruida y abierta.

                Obj_BD_Gimnasio_DAL.Obj_DAP.SelectCommand.CommandType = CommandType.StoredProcedure;

                #region AGREGAR PARÁMETROS

                if (Obj_BD_Gimnasio_DAL.DT_Parametros != null)
                {
                    SqlDbType TipoDatoSQL = SqlDbType.VarChar;

                    foreach (DataRow dr in Obj_BD_Gimnasio_DAL.DT_Parametros.Rows)
                    {
                        #region Definición de tipos de Datos del SQL

                        switch (dr[1])
                        {
                            case "1":
                                {
                                    TipoDatoSQL = SqlDbType.Int;
                                    break;
                                }
                            case "2":
                                {
                                    TipoDatoSQL = SqlDbType.VarChar;
                                    break;
                                }
                            case "3":
                                {
                                    TipoDatoSQL = SqlDbType.NVarChar;
                                    break;
                                }
                            case "4":
                                {
                                    TipoDatoSQL = SqlDbType.Char;
                                    break;
                                }
                            case "5":
                                {
                                    TipoDatoSQL = SqlDbType.NChar;
                                    break;
                                }
                            case "6":
                                {
                                    TipoDatoSQL = SqlDbType.DateTime;
                                    break;
                                }
                            case "7":
                                {
                                    TipoDatoSQL = SqlDbType.TinyInt;
                                    break;
                                }
                            case "8":
                                {
                                    TipoDatoSQL = SqlDbType.BigInt;
                                    break;
                                }
                            case "9":
                                {
                                    TipoDatoSQL = SqlDbType.Binary;
                                    break;
                                }
                            case "10":
                                {
                                    TipoDatoSQL = SqlDbType.Bit;
                                    break;
                                }
                            case "11":
                                {
                                    TipoDatoSQL = SqlDbType.Date;
                                    break;
                                }
                            case "12":
                                {
                                    TipoDatoSQL = SqlDbType.DateTime2;
                                    break;
                                }
                            case "13":
                                {
                                    TipoDatoSQL = SqlDbType.DateTimeOffset;
                                    break;
                                }
                            case "14":
                                {
                                    TipoDatoSQL = SqlDbType.Decimal;
                                    break;
                                }
                            case "15":
                                {
                                    TipoDatoSQL = SqlDbType.Float;
                                    break;
                                }
                            case "16":
                                {
                                    TipoDatoSQL = SqlDbType.Image;
                                    break;
                                }
                            case "17":
                                {
                                    TipoDatoSQL = SqlDbType.Money;
                                    break;
                                }
                            case "18":
                                {
                                    TipoDatoSQL = SqlDbType.NText;
                                    break;
                                }
                            case "19":
                                {
                                    TipoDatoSQL = SqlDbType.Real;
                                    break;
                                }
                            case "20":
                                {
                                    TipoDatoSQL = SqlDbType.SmallDateTime;
                                    break;
                                }
                            case "21":
                                {
                                    TipoDatoSQL = SqlDbType.SmallInt;
                                    break;
                                }
                            case "22":
                                {
                                    TipoDatoSQL = SqlDbType.SmallMoney;
                                    break;
                                }
                            case "23":
                                {
                                    TipoDatoSQL = SqlDbType.Structured;
                                    break;
                                }
                            case "24":
                                {
                                    TipoDatoSQL = SqlDbType.Text;
                                    break;
                                }
                            case "25":
                                {
                                    TipoDatoSQL = SqlDbType.Time;
                                    break;
                                }
                            case "26":
                                {
                                    TipoDatoSQL = SqlDbType.Timestamp;
                                    break;
                                }
                            case "27":
                                {
                                    TipoDatoSQL = SqlDbType.Udt;
                                    break;
                                }
                            case "28":
                                {
                                    TipoDatoSQL = SqlDbType.UniqueIdentifier;
                                    break;
                                }
                            case "29":
                                {
                                    TipoDatoSQL = SqlDbType.VarBinary;
                                    break;
                                }
                            case "30":
                                {
                                    TipoDatoSQL = SqlDbType.Variant;
                                    break;
                                }
                            case "31":
                                {
                                    TipoDatoSQL = SqlDbType.Xml;
                                    break;
                                }

                            default:
                                break;
                        }

                        #endregion

                        Obj_BD_Gimnasio_DAL.Obj_DAP.SelectCommand.Parameters.Add(dr[0].ToString(), // nombre del parametro
                                                                        TipoDatoSQL  // el tipo de datos que entiende el sql - resultado del switch
                                                                        ).Value = dr[2].ToString(); // el valor del parametro

                    }
                }

                #endregion

                Obj_BD_Gimnasio_DAL.DS = new DataSet();
                Obj_BD_Gimnasio_DAL.Obj_DAP.Fill(Obj_BD_Gimnasio_DAL.DS,         // objeto donde el sql va a devolver los datos resultado de la ejecución del SP
                                        Obj_BD_Gimnasio_DAL.SNomTabla); // nombre técnico del data tables en programació o código

                Obj_BD_Gimnasio_DAL.SMsjErrorBD = string.Empty;
            }
            catch (SqlException ex)
            {
                Obj_BD_Gimnasio_DAL.SMsjErrorBD = ex.Message.ToString();
            }
            finally
            {
                if (Obj_BD_Gimnasio_DAL.Obj_CNX.State == ConnectionState.Open)
                {
                    Obj_BD_Gimnasio_DAL.Obj_CNX.Close();
                }

                Obj_BD_Gimnasio_DAL.Obj_CNX.Dispose();
            }
        }

        public void ExecCommand(ref cls_BD_Gimnasio_DAL Obj_BD_Gimnasio_DAL)
        {
            try
            {
                Obj_BD_Gimnasio_DAL.Obj_CNX = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL_AUT"].ToString());


                if (Obj_BD_Gimnasio_DAL.Obj_CNX.State == ConnectionState.Closed)
                {
                    Obj_BD_Gimnasio_DAL.Obj_CNX.Open();
                }

                Obj_BD_Gimnasio_DAL.Obj_CMD = new SqlCommand(Obj_BD_Gimnasio_DAL.SNomSP, // nombre del store procedure que debe ejecutar en la BD
                                                     Obj_BD_Gimnasio_DAL.Obj_CNX); // conexion a la BD previamente costruida y abierta.

                Obj_BD_Gimnasio_DAL.Obj_CMD.CommandType = CommandType.StoredProcedure;

                #region AGREGAR PARÁMETROS

                if (Obj_BD_Gimnasio_DAL.DT_Parametros != null)
                {
                    SqlDbType TipoDatoSQL = SqlDbType.VarChar;

                    foreach (DataRow dr in Obj_BD_Gimnasio_DAL.DT_Parametros.Rows)
                    {
                        #region Definición de tipos de Datos del SQL

                        switch (dr[1])
                        {
                            case "1":
                                {
                                    TipoDatoSQL = SqlDbType.Int;
                                    break;
                                }
                            case "2":
                                {
                                    TipoDatoSQL = SqlDbType.VarChar;
                                    break;
                                }
                            case "3":
                                {
                                    TipoDatoSQL = SqlDbType.NVarChar;
                                    break;
                                }
                            case "4":
                                {
                                    TipoDatoSQL = SqlDbType.Char;
                                    break;
                                }
                            case "5":
                                {
                                    TipoDatoSQL = SqlDbType.NChar;
                                    break;
                                }
                            case "6":
                                {
                                    TipoDatoSQL = SqlDbType.DateTime;
                                    break;
                                }
                            case "7":
                                {
                                    TipoDatoSQL = SqlDbType.TinyInt;
                                    break;
                                }
                            case "8":
                                {
                                    TipoDatoSQL = SqlDbType.BigInt;
                                    break;
                                }
                            case "9":
                                {
                                    TipoDatoSQL = SqlDbType.Binary;
                                    break;
                                }
                            case "10":
                                {
                                    TipoDatoSQL = SqlDbType.Bit;
                                    break;
                                }
                            case "11":
                                {
                                    TipoDatoSQL = SqlDbType.Date;
                                    break;
                                }
                            case "12":
                                {
                                    TipoDatoSQL = SqlDbType.DateTime2;
                                    break;
                                }
                            case "13":
                                {
                                    TipoDatoSQL = SqlDbType.DateTimeOffset;
                                    break;
                                }
                            case "14":
                                {
                                    TipoDatoSQL = SqlDbType.Decimal;
                                    break;
                                }
                            case "15":
                                {
                                    TipoDatoSQL = SqlDbType.Float;
                                    break;
                                }
                            case "16":
                                {
                                    TipoDatoSQL = SqlDbType.Image;
                                    break;
                                }
                            case "17":
                                {
                                    TipoDatoSQL = SqlDbType.Money;
                                    break;
                                }
                            case "18":
                                {
                                    TipoDatoSQL = SqlDbType.NText;
                                    break;
                                }
                            case "19":
                                {
                                    TipoDatoSQL = SqlDbType.Real;
                                    break;
                                }
                            case "20":
                                {
                                    TipoDatoSQL = SqlDbType.SmallDateTime;
                                    break;
                                }
                            case "21":
                                {
                                    TipoDatoSQL = SqlDbType.SmallInt;
                                    break;
                                }
                            case "22":
                                {
                                    TipoDatoSQL = SqlDbType.SmallMoney;
                                    break;
                                }
                            case "23":
                                {
                                    TipoDatoSQL = SqlDbType.Structured;
                                    break;
                                }
                            case "24":
                                {
                                    TipoDatoSQL = SqlDbType.Text;
                                    break;
                                }
                            case "25":
                                {
                                    TipoDatoSQL = SqlDbType.Time;
                                    break;
                                }
                            case "26":
                                {
                                    TipoDatoSQL = SqlDbType.Timestamp;
                                    break;
                                }
                            case "27":
                                {
                                    TipoDatoSQL = SqlDbType.Udt;
                                    break;
                                }
                            case "28":
                                {
                                    TipoDatoSQL = SqlDbType.UniqueIdentifier;
                                    break;
                                }
                            case "29":
                                {
                                    TipoDatoSQL = SqlDbType.VarBinary;
                                    break;
                                }
                            case "30":
                                {
                                    TipoDatoSQL = SqlDbType.Variant;
                                    break;
                                }
                            case "31":
                                {
                                    TipoDatoSQL = SqlDbType.Xml;
                                    break;
                                }

                            default:
                                break;
                        }

                        #endregion

                        Obj_BD_Gimnasio_DAL.Obj_CMD.Parameters.Add(dr[0].ToString(), // nombre del parametro
                                                          TipoDatoSQL  // el tipo de datos que entiende el sql - resultado del switch
                                                          ).Value = dr[2].ToString(); // el valor del parametro

                    }
                }

                #endregion


                if (Obj_BD_Gimnasio_DAL.SIndAxn == "NORMAL")
                {
                    Obj_BD_Gimnasio_DAL.Obj_CMD.ExecuteNonQuery();
                    Obj_BD_Gimnasio_DAL.SValorScalar = string.Empty;
                }
                else
                {
                    Obj_BD_Gimnasio_DAL.SValorScalar = Obj_BD_Gimnasio_DAL.Obj_CMD.ExecuteScalar().ToString().Trim();
                }

                Obj_BD_Gimnasio_DAL.SMsjErrorBD = string.Empty;
            }
            catch (SqlException ex)
            {
                Obj_BD_Gimnasio_DAL.SMsjErrorBD = ex.Message.ToString();
            }
            finally
            {
                if (Obj_BD_Gimnasio_DAL.Obj_CNX.State == ConnectionState.Open)
                {
                    Obj_BD_Gimnasio_DAL.Obj_CNX.Close();
                }

                Obj_BD_Gimnasio_DAL.Obj_CNX.Dispose();
            }

        }
    }
}
