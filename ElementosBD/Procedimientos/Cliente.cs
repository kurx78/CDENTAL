using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Cliente
    {
        public List<Tablas.Cliente> Seleccionar(string strConexion, Tablas.Cliente Obj)
        {
            List<Tablas.Cliente> lista = new List<Tablas.Cliente>();
            try
            {

                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CLIENTE_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Cliente entidad = new Tablas.Cliente()
                    {
                        Cedula = Convert.ToString(SqlDR["Cedula"]),
                        Nombre = Convert.ToString(SqlDR["Nombre"]),
                        Apellido1 = Convert.ToString(SqlDR["Apellido1"]),
                        Apellido2 = Convert.ToString(SqlDR["Apellido2"]),
                        FechaNacimiento = Convert.ToDateTime(SqlDR["FechaNacimiento"]),
                        TipoOcupacion = Convert.ToInt32(SqlDR["TipoOcupacion"]),
                        EmergenciaAvisar = Convert.ToString(SqlDR["EmergenciaAvisar"]),
                        Medico = Convert.ToString(SqlDR["Medico"]),
                        Dama = Convert.ToBoolean(SqlDR["Dama"])
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

        public bool Insertar(string strConexion, Tablas.Cliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CLIENTE_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PNOMBRE", SqlDbType.VarChar);
                Query.Parameters.Add("@PAPELLIDO1", SqlDbType.VarChar);
                Query.Parameters.Add("@PAPELLIDO2", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHANACIMIENTO", SqlDbType.DateTime);
                Query.Parameters.Add("@PTIPOOCUPACION", SqlDbType.Int);
                Query.Parameters.Add("@PEMERGENCIAAVISAR", SqlDbType.VarChar);
                Query.Parameters.Add("@PMEDICO", SqlDbType.VarChar);
                Query.Parameters.Add("@PDAMA", SqlDbType.Bit);

                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PNOMBRE"].Value = Obj.Nombre;
                Query.Parameters["@PAPELLIDO1"].Value = Obj.Apellido1;
                Query.Parameters["@PAPELLIDO2"].Value = Obj.Apellido2;
                Query.Parameters["@PFECHANACIMIENTO"].Value = Obj.FechaNacimiento;
                Query.Parameters["@PTIPOOCUPACION"].Value = Obj.TipoOcupacion;
                Query.Parameters["@PEMERGENCIAAVISAR"].Value = Obj.EmergenciaAvisar;
                Query.Parameters["@PMEDICO"].Value = Obj.Medico;
                Query.Parameters["@PDAMA"].Value = Obj.Dama;

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

        public bool Modificar(string strConexion, Tablas.Cliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CLIENTE_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PNOMBRE", SqlDbType.VarChar);
                Query.Parameters.Add("@PAPELLIDO1", SqlDbType.VarChar);
                Query.Parameters.Add("@PAPELLIDO2", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHANACIMIENTO", SqlDbType.DateTime);
                Query.Parameters.Add("@PTIPOOCUPACION", SqlDbType.Int);
                Query.Parameters.Add("@PEMERGENCIAAVISAR", SqlDbType.VarChar);
                Query.Parameters.Add("@PMEDICO", SqlDbType.VarChar);
                Query.Parameters.Add("@PDAMA", SqlDbType.Bit);

                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PNOMBRE"].Value = Obj.Nombre;
                Query.Parameters["@PAPELLIDO1"].Value = Obj.Apellido1;
                Query.Parameters["@PAPELLIDO2"].Value = Obj.Apellido2;
                Query.Parameters["@PFECHANACIMIENTO"].Value = Obj.FechaNacimiento;
                Query.Parameters["@PTIPOOCUPACION"].Value = Obj.TipoOcupacion;
                Query.Parameters["@PEMERGENCIAAVISAR"].Value = Obj.EmergenciaAvisar;
                Query.Parameters["@PMEDICO"].Value = Obj.Medico;
                Query.Parameters["@PDAMA"].Value = Obj.Dama;
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

        public bool Eliminar(string strConexion, Tablas.Cliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CLIENTE_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
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
