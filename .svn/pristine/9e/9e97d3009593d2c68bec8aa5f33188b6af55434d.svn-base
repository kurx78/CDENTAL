using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class DireccionesCliente
    {
        public List<Tablas.DireccionesCliente> Seleccionar(string strConexion, Tablas.DireccionesCliente Obj)
        {
            List<Tablas.DireccionesCliente> lista = new List<Tablas.DireccionesCliente>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_DIRECCIONESCLIENTE_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.TipoDireccion;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.DireccionesCliente entidad = new Tablas.DireccionesCliente()
                    {
                        Id_provincia = Convert.ToInt32(SqlDR["Id_provincia"]),
                        Id_canton = Convert.ToInt32(SqlDR["Id_Canton"]),
                        Id_distrito = Convert.ToInt32(SqlDR["Id_distrito"]),
                        Direccion = Convert.ToString(SqlDR["Direccion"])
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

        public bool Insertar(string strConexion, Tablas.DireccionesCliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_DIRECCIONESCLIENTE_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters.Add("@PID_PROVINCIA", SqlDbType.Int);
                Query.Parameters.Add("@PID_CANTON", SqlDbType.Int);
                Query.Parameters.Add("@PID_DISTRITO", SqlDbType.Int);
                Query.Parameters.Add("@PDIRECCION", SqlDbType.VarChar);
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.TipoDireccion;
                Query.Parameters["@PID_PROVINCIA"].Value = Obj.Id_provincia;
                Query.Parameters["@PID_CANTON"].Value = Obj.Id_canton;
                Query.Parameters["@PID_DISTRITO"].Value = Obj.Id_distrito;
                Query.Parameters["@PDIRECCION"].Value = Obj.Direccion;
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

        public bool Modificar(string strConexion, Tablas.DireccionesCliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_DIRECCIONESCLIENTE_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters.Add("@PID_PROVINCIA", SqlDbType.Int);
                Query.Parameters.Add("@PID_CANTON", SqlDbType.Int);
                Query.Parameters.Add("@PID_DISTRITO", SqlDbType.Int);
                Query.Parameters.Add("@PDIRECCION", SqlDbType.VarChar);
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.TipoDireccion;
                Query.Parameters["@PID_PROVINCIA"].Value = Obj.Id_provincia;
                Query.Parameters["@PID_CANTON"].Value = Obj.Id_canton;
                Query.Parameters["@PID_DISTRITO"].Value = Obj.Id_distrito;
                Query.Parameters["@PDIRECCION"].Value = Obj.Direccion;
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

        public bool Eliminar(string strConexion, Tablas.DireccionesCliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_DIRECCIONESCLIENTE_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PTIPODIRECCION", SqlDbType.Int);
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PTIPODIRECCION"].Value = Obj.TipoDireccion;
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
