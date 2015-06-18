using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Piezas
    {
        public List<Tablas.Piezas> Seleccionar(string strConexion, Tablas.Piezas Obj)
        {
            List<Tablas.Piezas> lista = new List<Tablas.Piezas>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_PIEZAS_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PPIEZA", SqlDbType.Int);
                Query.Parameters["@PPIEZA"].Value = Obj.Pieza;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Piezas entidad = new Tablas.Piezas()
                    {
                        Pieza = Convert.ToInt32(SqlDR["Pieza"]),
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
