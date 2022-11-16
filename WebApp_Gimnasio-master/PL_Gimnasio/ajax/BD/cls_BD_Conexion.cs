using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace PL_Gimnasio.ajax
{
    public class cls_BD_Conexion
    {
        public DataSet ExecDataAdapter(string store_procedure, List<SqlParameter> lista_parametros)
        {
            SqlConnection conexion_bd = new SqlConnection();
            SqlDataAdapter dataAdapter = new SqlDataAdapter();
            DataSet dataSet = new DataSet();

            try
            {
                conexion_bd = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL_AUT"].ToString());

                if (conexion_bd.State == ConnectionState.Closed)
                {
                    conexion_bd.Open();
                }

                dataAdapter = new SqlDataAdapter(store_procedure, // nombre del store procedure que debe ejecutar en la BD
                                                 conexion_bd); // conexion a la BD previamente costruida y abierta.

                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                #region AGREGAR PARÁMETROS

                dataAdapter.SelectCommand.Parameters.AddRange(lista_parametros.ToArray());

                #endregion
               
                dataAdapter.Fill(dataSet);         // objeto donde el sql va a devolver los datos resultado de la ejecución del SP
                
            }
            catch (SqlException ex)
            {
                
            }
            finally
            {
                if (conexion_bd.State == ConnectionState.Open)
                {
                    conexion_bd.Close();
                }

                conexion_bd.Dispose();

            }

            return dataSet;
        }

        public string ExecCommand(string store_procedure, List<SqlParameter> lista_parametros, char execute_type)
        {
            SqlConnection conexion_bd = new SqlConnection();
            SqlCommand sqlCommand = new SqlCommand();
            string retorno_exec = string.Empty;

            try
            {
                conexion_bd = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL_AUT"].ToString());

                if (conexion_bd.State == ConnectionState.Closed)
                {
                    conexion_bd.Open();
                }

                sqlCommand = new SqlCommand(store_procedure, // nombre del store procedure que debe ejecutar en la BD
                                            conexion_bd); // conexion a la BD previamente costruida y abierta.

                sqlCommand.CommandType = CommandType.StoredProcedure;

                #region AGREGAR PARÁMETROS

                sqlCommand.Parameters.AddRange(lista_parametros.ToArray());

                #endregion

                if (execute_type == 'n')
                {
                    sqlCommand.ExecuteNonQuery();                    
                }
                else
                {
                    retorno_exec = sqlCommand.ExecuteScalar().ToString().Trim();
                }

            }
            catch (SqlException ex)
            {
                
            }
            finally
            {
                if (conexion_bd.State == ConnectionState.Open)
                {
                    conexion_bd.Close();
                }

                conexion_bd.Dispose();
            }

            return retorno_exec;
        }
    }
}