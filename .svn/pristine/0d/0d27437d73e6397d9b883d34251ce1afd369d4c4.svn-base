using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Telefonos
    {
        public List<Tablas.Telefonos> Seleccionar(string strConexion, Tablas.Telefonos Obj)
        {
            List<Tablas.Telefonos> lista = new List<Tablas.Telefonos>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TELEFONOS_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.TipoTelefono;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Telefonos entidad = new Tablas.Telefonos()
                    {
                        Cedula = Convert.ToString(SqlDR["Cedula"]),
                        TipoTelefono = Convert.ToInt32(SqlDR["TipoTelefono"]),
                        Telefono = Convert.ToString(SqlDR["Telefono"]),
                        Extension = Convert.ToString(SqlDR["Extension"])
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

        public bool Insertar(string strConexion, Tablas.Telefonos Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TELEFONOS_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PTELEFONO", SqlDbType.VarChar);
                Query.Parameters.Add("@PEXTENSION", SqlDbType.VarChar);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.TipoTelefono;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PTELEFONO"].Value = Obj.Telefono;
                Query.Parameters["@PEXTENSION"].Value = Obj.Extension;
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

        public bool Modificar(string strConexion, Tablas.Telefonos Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TELEFONOS_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PTELEFONO", SqlDbType.VarChar);
                Query.Parameters.Add("@PEXTENSION", SqlDbType.VarChar);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.TipoTelefono;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PTELEFONO"].Value = Obj.Telefono;
                Query.Parameters["@PEXTENSION"].Value = Obj.Extension;
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

        public bool Eliminar(string strConexion, Tablas.Telefonos Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TELEFONOS_ELIMINAR", conn);
                Query.Parameters.Add("@PTIPOTELEFONO", SqlDbType.Int);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters["@PTIPOTELEFONO"].Value = Obj.TipoTelefono;
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
    }
}
