using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Cita
    {
        public List<Tablas.Cita> Seleccionar(string strConexion, Tablas.Cita Obj)
        {
            List<Tablas.Cita> lista = new List<Tablas.Cita>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CITA_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCITA", SqlDbType.Int);
                Query.Parameters["@PCITA"].Value = Obj.Id_cita;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Cita entidad = new Tablas.Cita()
                    {
                        Id_cita = Convert.ToInt32(SqlDR["Cita"]),
                        Expediente = Convert.ToInt32(SqlDR["Expediente"]),
                        Fecha = Convert.ToDateTime(SqlDR["Fecha"]),
                        Observaciones = Convert.ToString(SqlDR["Observaciones"])
                    };
                    lista.Add(entidad);
                }
                SqlDR.Close();
                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return lista;
        }

        public List<Tablas.Cita> SeleccionarCitasReservadas(string strConexion, Tablas.Cita Obj)
        {
            List<Tablas.Cita> lista = new List<Tablas.Cita>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CITA_SELECCIONAR_RESERVADAS", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PFECHACITA", SqlDbType.DateTime);
                Query.Parameters["@PFECHACITA"].Value = Obj.Fecha;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Cita entidad = new Tablas.Cita()
                    {
                        Id_cita = Convert.ToInt32(SqlDR["Cita"]),
                        Expediente = Convert.ToInt32(SqlDR["Expediente"]),
                        Fecha = Convert.ToDateTime(SqlDR["Fecha"]),
                        Observaciones = Convert.ToString(SqlDR["Observaciones"])
                    };
                    lista.Add(entidad);
                }
                SqlDR.Close();
                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return lista;
        }

        public bool Insertar(string strConexion, Tablas.Cita Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CITA_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PFECHA", SqlDbType.DateTime);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);

                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                Query.Parameters["@PFECHA"].Value = Obj.Fecha;
                Query.Parameters["@POBSERVACIONES"].Value = Obj.Observaciones;

                Query.ExecuteNonQuery();

                retorno = true;

                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return retorno;
        }

        public bool Modificar(string strConexion, Tablas.Cita Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CITA_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCITA", SqlDbType.Int);
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PFECHA", SqlDbType.DateTime);
                Query.Parameters.Add("@POBSERVACIONES", SqlDbType.VarChar);

                Query.Parameters["@PCITA"].Value = Obj.Id_cita;
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Expediente;
                Query.Parameters["@PFECHA"].Value = Obj.Fecha;
                Query.Parameters["@POBSERVACIONES"].Value = Obj.Observaciones;
                Query.ExecuteNonQuery();

                retorno = true;

                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return retorno;
        }

        public bool Eliminar(string strConexion, Tablas.Cita Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CITA_ELIMINAR", conn);
                Query.Parameters.Add("@PCITA", SqlDbType.Int);
                Query.Parameters["@PCITA"].Value = Obj.Id_cita;
                Query.ExecuteNonQuery();

                retorno = true;

                conn.Close();

            }
            catch (Exception e)
            {
                throw e;
            }
            return retorno;
        }
    }
}
