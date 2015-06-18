using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Usuarios
    {
        public List<Tablas.Usuarios> Seleccionar(string strConexion, Tablas.Usuarios Obj)
        {
            List<Tablas.Usuarios> lista = new List<Tablas.Usuarios>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_USUARIOS_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PUSUARIO", SqlDbType.VarChar);
                Query.Parameters["@PUSUARIO"].Value = Obj.Usuario;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Usuarios entidad = new Tablas.Usuarios()
                    {
                        Usuario = Convert.ToString(SqlDR["Usuario"]),
                        Contraseña = Convert.ToString(SqlDR["Contraseña"]),
                        Cedula = Convert.ToString(SqlDR["Cedula"])
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

        public bool Insertar(string strConexion, Tablas.Usuarios Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_USUARIOS_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PUSUARIO", SqlDbType.VarChar);
                Query.Parameters.Add("@PCONTRASENA", SqlDbType.VarChar);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters["@PUSUARIO"].Value = Obj.Usuario;
                Query.Parameters["@PCONTRASENA"].Value = Obj.Contraseña;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
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

        public bool Modificar(string strConexion, Tablas.Usuarios Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_USUARIOS_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PUSUARIO", SqlDbType.VarChar);
                Query.Parameters.Add("@PCONTRASENA", SqlDbType.VarChar);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters["@PUSUARIO"].Value = Obj.Usuario;
                Query.Parameters["@PCONTRASENA"].Value = Obj.Contraseña;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
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

        public bool Eliminar(string strConexion, Tablas.Usuarios Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_USUARIOS_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PUSUARIO", SqlDbType.VarChar);
                Query.Parameters["@PUSUARIO"].Value = Obj.Usuario;
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
