using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CDental.WSCDental;

namespace CDental.Clientes
{
    public partial class frmGestionCuenta : Form
    {
        public static Utilidades pUtilidades = new Utilidades();

        public frmGestionCuenta()
        {
            InitializeComponent();
            this.LimpiarGeneral();
        }

        #region Eventos de Control

        private void cboxCedula_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                this.txtCedula.Enabled = !this.cboxCedula.Checked;
                if (this.cboxCedula.Checked)
                    this.txtCedula.Text = string.Empty;
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void cboxExpediente_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                this.txtExpediente.Enabled = !this.cboxExpediente.Checked;
                if (this.cboxExpediente.Checked)
                    this.txtExpediente.Text = string.Empty;
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void cboxCodigoCuenta_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                this.txtCodigoCuenta.Enabled = !this.cboxCodigoCuenta.Checked;
                if (this.cboxCodigoCuenta.Checked)
                    this.txtCodigoCuenta.Text = string.Empty;
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void cboxUsuarios_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                this.txtUsuario.Enabled = !this.cboxUsuarios.Checked;
                if (this.cboxUsuarios.Checked)
                    this.txtUsuario.Text = string.Empty;
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            try
            {
                int pCodigoCuenta = 0;
                string pCedula = "00";
                int pExpediente = 0;
                string pUsuario = "00";

                if (!this.cboxCodigoCuenta.Checked)
                    Int32.TryParse(this.txtCodigoCuenta.Text, out pCodigoCuenta);

                if (!this.cboxExpediente.Checked)
                    Int32.TryParse(this.txtExpediente.Text, out pExpediente);

                if (!this.cboxCedula.Checked && !string.IsNullOrEmpty(this.txtCedula.Text))
                    pCedula = this.txtCedula.Text;

                if (!this.cboxUsuarios.Checked && !string.IsNullOrEmpty(this.txtUsuario.Text))
                    pUsuario = this.txtUsuario.Text;

                this.SeleccionarCuentaHistorica(pCodigoCuenta, this.dtimeFechaInicio.Value, this.dtimeFechaFin.Value, pCedula, pExpediente, pUsuario);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            try
            {
                this.LimpiarGeneral();
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

        #region Métodos de la pantalla

        private void LimpiarGeneral()
        {
            try
            {
                this.dtimeFechaInicio.Value = DateTime.Today;
                this.dtimeFechaFin.Value = DateTime.Today;

                this.cboxCedula.Checked = true;
                this.cboxCodigoCuenta.Checked = true;
                this.cboxExpediente.Checked = true;
                this.cboxUsuarios.Checked = true;

                this.txtCedula.Enabled = false;
                this.txtCodigoCuenta.Enabled = false;
                this.txtExpediente.Enabled = false;
                this.txtUsuario.Enabled = false;

                this.txtCedula.Text = string.Empty;
                this.txtCodigoCuenta.Text = string.Empty;
                this.txtExpediente.Text = string.Empty;
                this.txtUsuario.Text = string.Empty;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void SeleccionarCuentaHistorica(int pCodigoCuenta, DateTime pFechaIni, DateTime pFechaFin, string pCedula, int pExpediente, string pUsuario)
        {
            try
            {
                var objCuentasHistorico = new CuentasHistorico();
                objCuentasHistorico.CodigoCuenta = pCodigoCuenta;
                objCuentasHistorico.FechaInicio = pFechaIni;
                objCuentasHistorico.FechaFin = pFechaFin;
                objCuentasHistorico.Expediente = pExpediente;
                objCuentasHistorico.Usuario = pUsuario;
                objCuentasHistorico.Cedula = pCedula;

                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listCuentasHistorico = new List<CuentasHistorico>();
                    listCuentasHistorico = svc.CuentasHistoricoSeleccionar(objCuentasHistorico);
                    if (listCuentasHistorico.Count > 0)
                    {
                        this.dgCuentasHistoricas.AutoGenerateColumns = false;
                        this.dgCuentasHistoricas.DataSource = listCuentasHistorico;
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
    }
}
