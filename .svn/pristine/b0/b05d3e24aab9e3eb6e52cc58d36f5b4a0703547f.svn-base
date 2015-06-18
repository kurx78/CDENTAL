using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CDental.WSCDental;

namespace CDental.Expedientes
{
    public partial class frmGestionExpediente : Form
    {

        public static Utilidades pUtilidades = new Utilidades();

        public frmGestionExpediente()
        {
            InitializeComponent();
            this.lblFecha.Text = DateTime.Today.ToShortDateString();
        }

        #region Acciones

        private void SeleccionarExpedienteGeneral(int pExpediente, string pCedula)
        {
            try
            {
                var objExpediente = new Expediente();
                objExpediente.Cedula = pCedula;
                objExpediente.Id_Expediente = pExpediente;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listExpediente = new List<Expediente>();
                    listExpediente = svc.ExpedienteSeleccionar(objExpediente);
                    if (listExpediente.Count > 0)
                    {
                        this.txtExpediente.Text = listExpediente[0].Id_Expediente.ToString();
                        this.txtCedula.Text = listExpediente[0].Cedula;
                        this.lblFecha.Text = listExpediente[0].FechaCreacion.ToShortDateString();
                        this.rbtnTratamientoMedico.Checked = listExpediente[0].BajoTratamientoMedico;
                        this.rbtnTomaMedicamento.Checked = listExpediente[0].TomaMedicamento;
                        this.rbtnDiabetes.Checked = listExpediente[0].Diabetes;
                        this.rbtnArtritis.Checked = listExpediente[0].Artritis;
                        this.rbtnEnfermedadesCardiacas.Checked = listExpediente[0].EnfermedadCardiaca;
                        this.rbtnFiebreReumatica.Checked = listExpediente[0].FiebreReumatica;
                        this.rbtnHepatitis.Checked = listExpediente[0].Hepatitis;
                        this.rbtnUlceras.Checked = listExpediente[0].Ulceras;
                        this.rbtnTrastornosRenales.Checked = listExpediente[0].TrastornosRenales;
                        this.txtOtrasEnfermedades.Text = listExpediente[0].OtrasEnfermedades;
                        this.rbtnOperadoInternado.Checked = listExpediente[0].OperadoInternado;
                        this.rbtnAlteracionSaludUltMeses.Checked = listExpediente[0].AlteracionSaludUltMeses;
                        this.rbtnOtraEnfermedadNoMencionada.Checked = listExpediente[0].OtraEnfermedadNoMencionada;
                        this.rbtnAspirina.Checked = listExpediente[0].AlergicoAspirina;
                        this.rbtnPenicilina.Checked = listExpediente[0].Penicilina;
                        this.rbtnSulfas.Checked = listExpediente[0].Sulfas;
                        this.txtOtrosMedicamentos.Text = listExpediente[0].OtrosMedicamentos;
                        this.rbtnReaccionAnormalAnesDental.Checked = listExpediente[0].ReaccionAnormalAnesDental;
                        this.rbtnSangradoProlongado.Checked = listExpediente[0].SangradoProlongado;
                        this.rbtnDesmayos.Checked = listExpediente[0].Desmayos;
                    }
                    this.SeleccionarCliente(listExpediente[0].Cedula);
                    if (this.rbtnMujer.Checked)
                    {
                        this.gboxMujeres.Enabled = this.rbtnMujer.Checked;
                        this.SeleccionarExpedienteOpcional(listExpediente[0].Id_Expediente);
                    }
                }
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private bool RealizarAccionExpedienteGeneral(string pAccion)
        {
            bool retorno = false;
            try
            {
                var objExpediente = new Expediente();

                int pExpediente = 0;
                Int32.TryParse(this.txtExpediente.Text, out pExpediente);

                objExpediente.Id_Expediente = pExpediente;
                objExpediente.Cedula = this.txtCedula.Text;
                objExpediente.FechaCreacion = DateTime.Today;
                objExpediente.BajoTratamientoMedico = this.rbtnTratamientoMedico.Checked;
                objExpediente.TomaMedicamento = this.rbtnTomaMedicamento.Checked;
                objExpediente.Diabetes = this.rbtnDiabetes.Checked;
                objExpediente.Artritis = this.rbtnArtritis.Checked;
                objExpediente.EnfermedadCardiaca = this.rbtnEnfermedadesCardiacas.Checked;
                objExpediente.FiebreReumatica = this.rbtnFiebreReumatica.Checked;
                objExpediente.Hepatitis = this.rbtnHepatitis.Checked;
                objExpediente.Ulceras = this.rbtnUlceras.Checked;
                objExpediente.TrastornosRenales = this.rbtnTrastornosRenales.Checked;
                objExpediente.OtrasEnfermedades = this.txtOtrasEnfermedades.Text;
                objExpediente.OperadoInternado = this.rbtnOperadoInternado.Checked;
                objExpediente.AlteracionSaludUltMeses = this.rbtnAlteracionSaludUltMeses.Checked;
                objExpediente.OtraEnfermedadNoMencionada = this.rbtnOtraEnfermedadNoMencionada.Checked;
                objExpediente.AlergicoAspirina = this.rbtnAspirina.Checked;
                objExpediente.Penicilina = this.rbtnPenicilina.Checked;
                objExpediente.Sulfas = this.rbtnSulfas.Checked;
                objExpediente.OtrosMedicamentos = this.txtOtrosMedicamentos.Text;
                objExpediente.ReaccionAnormalAnesDental = this.rbtnReaccionAnormalAnesDental.Checked;
                objExpediente.SangradoProlongado = this.rbtnSangradoProlongado.Checked;
                objExpediente.Desmayos = this.rbtnDesmayos.Checked;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.ExpedienteInsertar(objExpediente);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.ExpedienteModificar(objExpediente);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.ExpedienteEliminar(objExpediente);
                    }
                }
                if (retorno)
                {
                    this.SeleccionarExpedienteGeneral(objExpediente.Id_Expediente, objExpediente.Cedula);
                    if (this.rbtnMujer.Checked)
                        this.RealizarAccionExpedienteOpcional(pAccion, objExpediente.Id_Expediente);
                }

                return retorno;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void SeleccionarExpedienteOpcional(int pExpediente)
        {
            try
            {
                var objExpedienteOpcional = new ExpedienteOpcional();
                objExpedienteOpcional.Expediente = pExpediente;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listExpediente = new List<ExpedienteOpcional>();
                    listExpediente = svc.ExpedienteOpcionalSeleccionar(objExpedienteOpcional);
                    if (listExpediente.Count > 0)
                    {
                        this.rbtnEmbazada.Checked = listExpediente[0].Embarazada;
                        this.rbtnLactancia.Checked = listExpediente[0].Lactancia;
                        this.rbtnTrastornosCicloMestrual.Checked = listExpediente[0].TrastornosCicloMenstrual;
                        this.txtObservaciones.Text = listExpediente[0].Observaciones;
                    }
                }
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private bool RealizarAccionExpedienteOpcional(string pAccion, int pExpediente)
        {
            bool retorno = false;
            try
            {
                var objExpedienteOpcional = new ExpedienteOpcional();
                objExpedienteOpcional.Expediente = pExpediente;
                objExpedienteOpcional.Embarazada = this.rbtnEmbazada.Checked;
                objExpedienteOpcional.Lactancia = this.rbtnLactancia.Checked;
                objExpedienteOpcional.TrastornosCicloMenstrual = this.rbtnTrastornosCicloMestrual.Checked;
                objExpedienteOpcional.Observaciones = this.txtObservaciones.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.ExpedienteOpcionalInsertar(objExpedienteOpcional);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.ExpedienteOpcionalModificar(objExpedienteOpcional);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.ExpedienteOpcionalEliminar(objExpedienteOpcional);
                    }
                }
                if (retorno)
                {
                    this.SeleccionarExpedienteOpcional(objExpedienteOpcional.Expediente);
                }
                return retorno;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        public void SeleccionarCliente(string pCedula)
        {
            try
            {
                var objCliente = new Cliente();
                objCliente.Cedula = pCedula;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listCliente = new List<Cliente>();
                    listCliente = svc.ClienteSeleccionar(objCliente);
                    if (listCliente.Count > 0)
                    {
                        this.rbtnMujer.Checked = listCliente[0].Dama;
                    }
                }
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        #endregion

        #region Eventos de Control

        private void btnGeneralConsultar_Click(object sender, EventArgs e)
        {
            try
            {
                int pExpediente = 0;
                string pCedula = "00";
                if (!string.IsNullOrWhiteSpace(this.txtCedula.Text))
                    pCedula = this.txtCedula.Text;
                Int32.TryParse(this.txtExpediente.Text, out pExpediente);
                this.SeleccionarExpedienteGeneral(pExpediente, pCedula);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void btnGeneralIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionExpedienteGeneral(Acciones.Insertar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void btnGeneralModificar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionExpedienteGeneral(Acciones.Modificar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void btnGeneralEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionExpedienteGeneral(Acciones.Eliminar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        #endregion

    }
}
