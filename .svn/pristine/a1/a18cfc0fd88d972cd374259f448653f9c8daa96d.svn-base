using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace ElementosBD.Procedimientos
{
    public class Canton
    {

        public List<Tablas.Canton> Seleccionar(string strConexion, Tablas.Canton Obj)
        {
            List<Tablas.Canton> lista = new List<Tablas.Canton>();
            try
            {
                
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_CANTON_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PID_PROVINCIA", SqlDbType.Int);
                Query.Parameters.Add("@PID_CANTON", SqlDbType.Int);
                Query.Parameters["@PID_PROVINCIA"].Value = Obj.Id_provincia;
                Query.Parameters["@PID_CANTON"].Value = Obj.Id_canton;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while(SqlDR.Read())
                {
                    Tablas.Canton entidad = new Tablas.Canton()
                    {
                        Id_provincia = Convert.ToInt32(SqlDR["Id_provincia"]),
                        Id_canton = Convert.ToInt32(SqlDR["Id_Canton"]),
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
