using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace ElementosBD.Procedimientos
{
    public class Expediente
    {
        public List<Tablas.Expediente> Seleccionar(string strConexion, Tablas.Expediente Obj)
        {
            List<Tablas.Expediente> lista = new List<Tablas.Expediente>();
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTE_SELECCIONAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Id_Expediente;
                SqlDataReader SqlDR = Query.ExecuteReader();

                while (SqlDR.Read())
                {
                    Tablas.Expediente entidad = new Tablas.Expediente()
                    {
                        Id_Expediente = Convert.ToInt32(SqlDR["Expediente"]),
                        Cedula = Convert.ToString(SqlDR["Cedula"]),
                        FechaCreacion = Convert.ToDateTime(SqlDR["FechaCreacion"]),
                        BajoTratamientoMedico = Convert.ToBoolean(SqlDR["BajoTratamientoMedico"]),
                        TomaMedicamento = Convert.ToBoolean(SqlDR["TomaMedicamento"]),
                        Diabetes = Convert.ToBoolean(SqlDR["Diabetes"]),
                        Artritis = Convert.ToBoolean(SqlDR["Artritis"]),
                        EnfermedadCardiaca = Convert.ToBoolean(SqlDR["EnfermedadCardiaca"]),
                        FiebreReumatica = Convert.ToBoolean(SqlDR["FiebreReumatica"]),
                        Hepatitis = Convert.ToBoolean(SqlDR["Hepatitis"]),
                        Ulceras = Convert.ToBoolean(SqlDR["Ulceras"]),
                        TrastornosRenales = Convert.ToBoolean(SqlDR["TrastornosRenales"]),
                        EnfermedadesNerviosas = Convert.ToBoolean(SqlDR["EnfermedadesNerviosas"]),
                        OtrasEnfermedades = Convert.ToString(SqlDR["OtrasEnfermedades"]),
                        OperadoInternado = Convert.ToBoolean(SqlDR["OperadoInternado"]),
                        AlteracionSaludUltMeses = Convert.ToBoolean(SqlDR["AlteracionSaludUltMeses"]),
                        OtraEnfermedadNoMencionada = Convert.ToBoolean(SqlDR["OtraEnfermedadNoMencionada"]),
                        AlergicoAspirina = Convert.ToBoolean(SqlDR["AlergicoAspirina"]),
                        Penicilina = Convert.ToBoolean(SqlDR["Penicilina"]),
                        Sulfas = Convert.ToBoolean(SqlDR["Sulfas"]),
                        OtrosMedicamentos = Convert.ToString(SqlDR["OtrosMedicamentos"]),
                        ReaccionAnormalAnesDental = Convert.ToBoolean(SqlDR["ReaccionAnormalAnesDental"]),
                        SangradoProlongado = Convert.ToBoolean(SqlDR["SangradoProlongado"]),
                        Desmayos = Convert.ToBoolean(SqlDR["Desmayos"])
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

        public bool Insertar(string strConexion, Tablas.Expediente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTE_INSERTAR", conn);
                Query.CommandType = CommandType.StoredProcedure;

                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHACREACION", SqlDbType.DateTime);
                Query.Parameters.Add("@PBAJOTRATAMIENTOMEDICO", SqlDbType.Bit);
                Query.Parameters.Add("@PTOMAMEDICAMENTO", SqlDbType.Bit);
                Query.Parameters.Add("@PDIABETES", SqlDbType.Bit);
                Query.Parameters.Add("@PARTRITIS", SqlDbType.Bit);
                Query.Parameters.Add("@PENFERMEDADCARDIACA", SqlDbType.Bit);
                Query.Parameters.Add("@PFIEBREREUMATICA", SqlDbType.Bit);
                Query.Parameters.Add("@PHEPATITIS", SqlDbType.Bit);
                Query.Parameters.Add("@PULCERAS", SqlDbType.Bit);
                Query.Parameters.Add("@PTRASTORNOSRENALES", SqlDbType.Bit);
                Query.Parameters.Add("@PENFERMEDADESNERVIOSAS", SqlDbType.Bit);
                Query.Parameters.Add("@POTRASENFERMEDADES", SqlDbType.VarChar);
                Query.Parameters.Add("@POPERADOINTERNADO", SqlDbType.Bit);
                Query.Parameters.Add("@PALTERACIONSALUDULTMESES", SqlDbType.Bit);
                Query.Parameters.Add("@POTRAENFERMEDADNOMENCIONADA", SqlDbType.Bit);
                Query.Parameters.Add("@PALERGICOASPIRINA", SqlDbType.Bit);
                Query.Parameters.Add("@PPENICILINA", SqlDbType.Bit);
                Query.Parameters.Add("@PSULFAS", SqlDbType.Bit);
                Query.Parameters.Add("@POTROSMEDICAMENTOS", SqlDbType.VarChar);
                Query.Parameters.Add("@PREACCIONANORMALANESDENTAL", SqlDbType.Bit);
                Query.Parameters.Add("@PSANGRADOPROLONGADO", SqlDbType.Bit);
                Query.Parameters.Add("@PDESMAYOS", SqlDbType.Bit);
                
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PFECHACREACION"].Value = Obj.FechaCreacion;
                Query.Parameters["@PBAJOTRATAMIENTOMEDICO"].Value = Obj.BajoTratamientoMedico;
                Query.Parameters["@PTOMAMEDICAMENTO"].Value = Obj.TomaMedicamento;
                Query.Parameters["@PDIABETES"].Value = Obj.Diabetes;
                Query.Parameters["@PARTRITIS"].Value = Obj.Artritis;
                Query.Parameters["@PENFERMEDADCARDIACA"].Value = Obj.EnfermedadCardiaca;
                Query.Parameters["@PFIEBREREUMATICA"].Value = Obj.FiebreReumatica;
                Query.Parameters["@PHEPATITIS"].Value = Obj.Hepatitis;
                Query.Parameters["@PULCERAS"].Value = Obj.Ulceras;
                Query.Parameters["@PTRASTORNOSRENALES"].Value = Obj.TrastornosRenales;
                Query.Parameters["@PENFERMEDADESNERVIOSAS"].Value = Obj.EnfermedadesNerviosas;
                Query.Parameters["@POTRASENFERMEDADES"].Value = Obj.OtrasEnfermedades;
                Query.Parameters["@POPERADOINTERNADO"].Value = Obj.OperadoInternado;
                Query.Parameters["@PALTERACIONSALUDULTMESES"].Value = Obj.AlteracionSaludUltMeses;
                Query.Parameters["@POTRAENFERMEDADNOMENCIONADA"].Value = Obj.OtraEnfermedadNoMencionada;
                Query.Parameters["@PALERGICOASPIRINA"].Value = Obj.AlergicoAspirina;
                Query.Parameters["@PPENICILINA"].Value = Obj.Penicilina;
                Query.Parameters["@PSULFAS"].Value = Obj.Sulfas;
                Query.Parameters["@POTROSMEDICAMENTOS"].Value = Obj.OtrosMedicamentos;
                Query.Parameters["@PREACCIONANORMALANESDENTAL"].Value = Obj.ReaccionAnormalAnesDental;
                Query.Parameters["@PSANGRADOPROLONGADO"].Value = Obj.SangradoProlongado;
                Query.Parameters["@PDESMAYOS"].Value = Obj.Desmayos;

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

        public bool Modificar(string strConexion, Tablas.Expediente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTE_MODIFICAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters.Add("@PCEDULA", SqlDbType.VarChar);
                Query.Parameters.Add("@PFECHACREACION", SqlDbType.DateTime);
                Query.Parameters.Add("@PBAJOTRATAMIENTOMEDICO", SqlDbType.Bit);
                Query.Parameters.Add("@PTOMAMEDICAMENTO", SqlDbType.Bit);
                Query.Parameters.Add("@PDIABETES", SqlDbType.Bit);
                Query.Parameters.Add("@PARTRITIS", SqlDbType.Bit);
                Query.Parameters.Add("@PENFERMEDADCARDIACA", SqlDbType.Bit);
                Query.Parameters.Add("@PFIEBREREUMATICA", SqlDbType.Bit);
                Query.Parameters.Add("@PHEPATITIS", SqlDbType.Bit);
                Query.Parameters.Add("@PULCERAS", SqlDbType.Bit);
                Query.Parameters.Add("@PTRASTORNOSRENALES", SqlDbType.Bit);
                Query.Parameters.Add("@PENFERMEDADESNERVIOSAS", SqlDbType.Bit);
                Query.Parameters.Add("@POTRASENFERMEDADES", SqlDbType.VarChar);
                Query.Parameters.Add("@POPERADOINTERNADO", SqlDbType.Bit);
                Query.Parameters.Add("@PALTERACIONSALUDULTMESES", SqlDbType.Bit);
                Query.Parameters.Add("@POTRAENFERMEDADNOMENCIONADA", SqlDbType.Bit);
                Query.Parameters.Add("@PALERGICOASPIRINA", SqlDbType.Bit);
                Query.Parameters.Add("@PPENICILINA", SqlDbType.Bit);
                Query.Parameters.Add("@PSULFAS", SqlDbType.Bit);
                Query.Parameters.Add("@POTROSMEDICAMENTOS", SqlDbType.VarChar);
                Query.Parameters.Add("@PREACCIONANORMALANESDENTAL", SqlDbType.Bit);
                Query.Parameters.Add("@PSANGRADOPROLONGADO", SqlDbType.Bit);
                Query.Parameters.Add("@PDESMAYOS", SqlDbType.Bit);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Id_Expediente;
                Query.Parameters["@PCEDULA"].Value = Obj.Cedula;
                Query.Parameters["@PFECHACREACION"].Value = Obj.FechaCreacion;
                Query.Parameters["@PBAJOTRATAMIENTOMEDICO"].Value = Obj.BajoTratamientoMedico;
                Query.Parameters["@PTOMAMEDICAMENTO"].Value = Obj.TomaMedicamento;
                Query.Parameters["@PDIABETES"].Value = Obj.Diabetes;
                Query.Parameters["@PARTRITIS"].Value = Obj.Artritis;
                Query.Parameters["@PENFERMEDADCARDIACA"].Value = Obj.EnfermedadCardiaca;
                Query.Parameters["@PFIEBREREUMATICA"].Value = Obj.FiebreReumatica;
                Query.Parameters["@PHEPATITIS"].Value = Obj.Hepatitis;
                Query.Parameters["@PULCERAS"].Value = Obj.Ulceras;
                Query.Parameters["@PTRASTORNOSRENALES"].Value = Obj.TrastornosRenales;
                Query.Parameters["@PENFERMEDADESNERVIOSAS"].Value = Obj.EnfermedadesNerviosas;
                Query.Parameters["@POTRASENFERMEDADES"].Value = Obj.OtrasEnfermedades;
                Query.Parameters["@POPERADOINTERNADO"].Value = Obj.OperadoInternado;
                Query.Parameters["@PALTERACIONSALUDULTMESES"].Value = Obj.AlteracionSaludUltMeses;
                Query.Parameters["@POTRAENFERMEDADNOMENCIONADA"].Value = Obj.OtraEnfermedadNoMencionada;
                Query.Parameters["@PALERGICOASPIRINA"].Value = Obj.AlergicoAspirina;
                Query.Parameters["@PPENICILINA"].Value = Obj.Penicilina;
                Query.Parameters["@PSULFAS"].Value = Obj.Sulfas;
                Query.Parameters["@POTROSMEDICAMENTOS"].Value = Obj.OtrosMedicamentos;
                Query.Parameters["@PREACCIONANORMALANESDENTAL"].Value = Obj.ReaccionAnormalAnesDental;
                Query.Parameters["@PSANGRADOPROLONGADO"].Value = Obj.SangradoProlongado;
                Query.Parameters["@PDESMAYOS"].Value = Obj.Desmayos;

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

        public bool Eliminar(string strConexion, Tablas.Expediente Obj)
        {
            bool retorno = false;
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                conn.Open();
                SqlCommand Query = new SqlCommand("SP_EXPEDIENTE_ELIMINAR", conn);
                Query.CommandType = CommandType.StoredProcedure;
                Query.Parameters.Add("@PEXPEDIENTE", SqlDbType.Int);
                Query.Parameters["@PEXPEDIENTE"].Value = Obj.Id_Expediente;
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
