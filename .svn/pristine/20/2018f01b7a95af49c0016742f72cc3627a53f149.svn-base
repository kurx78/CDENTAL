using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CDental.WSCDental;

namespace CDental.Administracion
{
    public partial class frmGestionUsuarios : Form
    {
        public static Utilidades pUtilidades = new Utilidades();

        public frmGestionUsuarios()
        {
            InitializeComponent();
            this.LimpiarCampos();
            this.Seleccionar("00");
        }

        private void LimpiarCampos()
        {
            try
            {
                this.txtCedula.Text = string.Empty;
                this.txtContrasena.Text = string.Empty;
                this.txtUsuario.Text = string.Empty;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void consultarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Seleccionar(this.txtUsuario.Text);
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void Seleccionar(string pUsuario)
        {
            try
            {
                var objUsuario = new Usuarios();
                if (string.IsNullOrWhiteSpace(pUsuario))
                    pUsuario = "00";
                objUsuario.Usuario = pUsuario;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listUsuario = new List<Usuarios>();
                    listUsuario = svc.UsuariosSeleccionar(objUsuario);
                    if (listUsuario.Count > 0)
                    {
                        this.dgUsuariosDetalle.AutoGenerateColumns = false;
                        this.dgUsuariosDetalle.DataSource = listUsuario;
                    }
                }

            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private bool RealizarAccion(string pAccion)
        {
            bool retorno = false;
            try
            {
                var objUsuario = new Usuarios();
                objUsuario.Usuario = this.txtUsuario.Text;
                objUsuario.Contraseña = this.txtContrasena.Text;
                objUsuario.Cedula = this.txtCedula.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.UsuariosInsertar(objUsuario);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.UsuariosModificar(objUsuario);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.UsuariosEliminar(objUsuario);
                    }
                }
                if (retorno)
                {
                    this.Seleccionar("00");
                    this.LimpiarCampos();
                }
                return retorno;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void ingresarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccion(Acciones.Insertar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void modificarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccion(Acciones.Modificar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void eliminarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccion(Acciones.Eliminar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void dgUsuariosDetalle_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                DataGridViewRow fila = dgUsuariosDetalle.Rows[e.RowIndex];
                this.txtCedula.Text = Convert.ToString(fila.Cells["Cedula"].Value);
                this.txtContrasena.Text = Convert.ToString(fila.Cells["Contraseña"].Value);
                this.txtUsuario.Text = Convert.ToString(fila.Cells["Usuario"].Value);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message), 
                                "Ups..Contacta al Administrador!!!", 
                                MessageBoxButtons.OK, 
                                MessageBoxIcon.Warning);
            }


        }

    }
}
