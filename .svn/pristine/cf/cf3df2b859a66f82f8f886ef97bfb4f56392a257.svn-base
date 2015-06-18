using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class ParentescoCliente
    {
        public List<Tablas.ParentescoCliente> Seleccionar(string strConexion, Tablas.ParentescoCliente Obj)
        {
            List<Tablas.ParentescoCliente> lista = new List<Tablas.ParentescoCliente>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_PARENTESCOCLIENTE_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCLIENTE", SqlDbType.VarChar);
                Query.Parameters["@PCLIENTE"].Value = Obj.Cliente1;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.ParentescoCliente entidad = new Tablas.ParentescoCliente()
                    {
                        Identificador = Convert.ToInt32(SqlDR["Identificador"]),
                        Cliente1 = Convert.ToString(SqlDR["Cliente1"]),
                        Cliente2 = Convert.ToString(SqlDR["Descripcion"]),
                        TipoParentesco = Convert.ToInt32(SqlDR["TipoParentesco"])
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

        public bool Insertar(string strConexion, Tablas.ParentescoCliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PCLIENTE1", SqlDbType.VarChar);
                Query.Parameters.Add("@PCLIENTE2", SqlDbType.VarChar);
                Query.Parameters.Add("@PTIPOPARENTESCO", SqlDbType.Int);
                Query.Parameters["@PCLIENTE1"].Value = Obj.Cliente1;
                Query.Parameters["@PCLIENTE2"].Value = Obj.Cliente2;
                Query.Parameters["@PTIPOPARENTESCO"].Value = Obj.TipoParentesco;
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

        public bool Modificar(string strConexion, Tablas.ParentescoCliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PIDENTIFICADOR", SqlDbType.Int);
                Query.Parameters.Add("@PCLIENTE1", SqlDbType.VarChar);
                Query.Parameters.Add("@PCLIENTE2", SqlDbType.VarChar);
                Query.Parameters.Add("@PTIPOPARENTESCO", SqlDbType.Int);
                Query.Parameters["@PIDENTIFICADOR"].Value = Obj.Identificador;
                Query.Parameters["@PCLIENTE1"].Value = Obj.Cliente1;
                Query.Parameters["@PCLIENTE2"].Value = Obj.Cliente2;
                Query.Parameters["@PTIPOPARENTESCO"].Value = Obj.TipoParentesco;
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

        public bool Eliminar(string strConexion, Tablas.ParentescoCliente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_TIPOTELEFONO_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PIDENTIFICADOR", SqlDbType.Int);
                Query.Parameters["@PIDENTIFICADOR"].Value = Obj.Identificador;
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
