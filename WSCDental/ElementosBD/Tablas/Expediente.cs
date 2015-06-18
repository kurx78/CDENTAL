using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ElementosBD.Tablas
{
    public class Expediente
    {
        int id_Expediente;
        string cedula;
        DateTime fechaCreacion;
        bool bajoTratamientoMedico;

        bool tomaMedicamento;

        public bool TomaMedicamento
        {
            get { return tomaMedicamento; }
            set { tomaMedicamento = value; }
        }
        bool diabetes;

        public bool Diabetes
        {
            get { return diabetes; }
            set { diabetes = value; }
        }
        bool artritis;

        public bool Artritis
        {
            get { return artritis; }
            set { artritis = value; }
        }
        bool enfermedadCardiaca;

        public bool EnfermedadCardiaca
        {
            get { return enfermedadCardiaca; }
            set { enfermedadCardiaca = value; }
        }
        bool fiebreReumatica;

        public bool FiebreReumatica
        {
            get { return fiebreReumatica; }
            set { fiebreReumatica = value; }
        }
        bool hepatitis;

        public bool Hepatitis
        {
            get { return hepatitis; }
            set { hepatitis = value; }
        }
        bool ulceras;

        public bool Ulceras
        {
            get { return ulceras; }
            set { ulceras = value; }
        }
        bool trastornosRenales;

        public bool TrastornosRenales
        {
            get { return trastornosRenales; }
            set { trastornosRenales = value; }
        }
        bool enfermedadesNerviosas;

        public bool EnfermedadesNerviosas
        {
            get { return enfermedadesNerviosas; }
            set { enfermedadesNerviosas = value; }
        }
        string otrasEnfermedades;

        public string OtrasEnfermedades
        {
            get { return otrasEnfermedades; }
            set { otrasEnfermedades = value; }
        }
        bool operadoInternado;

        public bool OperadoInternado
        {
            get { return operadoInternado; }
            set { operadoInternado = value; }
        }
        bool alteracionSaludUltMeses;

        public bool AlteracionSaludUltMeses
        {
            get { return alteracionSaludUltMeses; }
            set { alteracionSaludUltMeses = value; }
        }
        bool otraEnfermedadNoMencionada;

        public bool OtraEnfermedadNoMencionada
        {
            get { return otraEnfermedadNoMencionada; }
            set { otraEnfermedadNoMencionada = value; }
        }
        bool alergicoAspirina;

        public bool AlergicoAspirina
        {
            get { return alergicoAspirina; }
            set { alergicoAspirina = value; }
        }
        bool penicilina;

        public bool Penicilina
        {
            get { return penicilina; }
            set { penicilina = value; }
        }
        bool sulfas;

        public bool Sulfas
        {
            get { return sulfas; }
            set { sulfas = value; }
        }
        string otrosMedicamentos;

        public string OtrosMedicamentos
        {
            get { return otrosMedicamentos; }
            set { otrosMedicamentos = value; }
        }
        bool reaccionAnormalAnesDental;

        public bool ReaccionAnormalAnesDental
        {
            get { return reaccionAnormalAnesDental; }
            set { reaccionAnormalAnesDental = value; }
        }
        bool sangradoProlongado;

        public bool SangradoProlongado
        {
            get { return sangradoProlongado; }
            set { sangradoProlongado = value; }
        }
        bool desmayos;

        public bool Desmayos
        {
            get { return desmayos; }
            set { desmayos = value; }
        }

        public bool BajoTratamientoMedico
        {
            get { return bajoTratamientoMedico; }
            set { bajoTratamientoMedico = value; }
        }

        public DateTime FechaCreacion
        {
            get { return fechaCreacion; }
            set { fechaCreacion = value; }
        }

        public string Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }

        public int Id_Expediente
        {
            get { return id_Expediente; }
            set { id_Expediente = value; }
        }
    }
}
