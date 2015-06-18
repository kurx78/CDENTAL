using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Pais
    {
        public List<Tablas.Pais> Seleccionar(string strConexion, Tablas.Pais Obj)
        {
            List<Tablas.Pais> lista = new List<Tablas.Pais>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_PAIS_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PID_PAIS", SqlDbType.Int);
                Query.Parameters["@PID_PAIS"].Value = Obj.Id_pais;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Pais entidad = new Tablas.Pais()
                    {
                        Id_pais = Convert.ToInt32(SqlDR["Id_pais"]),
                        Descripcion = Convert.ToString(SqlDR["Descripcion"]),
                        Nacionalidad = Convert.ToString(SqlDR["Nacionalidad"])
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
    }
}
