using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Provincia
    {
        public List<Tablas.Provincia> Seleccionar(string strConexion, Tablas.Provincia Obj)
        {
            List<Tablas.Provincia> lista = new List<Tablas.Provincia>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_PROVINCIA_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PID_PROVINCIA", SqlDbType.Int);
                Query.Parameters["@PID_PROVINCIA"].Value = Obj.Id_provincia;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Provincia entidad = new Tablas.Provincia()
                    {
                        Id_provincia = Convert.ToInt32(SqlDR["Id_provincia"]),
                        Descripcion = Convert.ToString(SqlDR["Descripcion"])
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
