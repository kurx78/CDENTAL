using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CDental.Administracion;
using CDental.OtrasGestiones;
using CDental.Clientes;
using CDental.Expedientes;


namespace CDental
{
    public partial class frmMenuPrincipal : Form
    {
        public static Utilidades pUtilidades = new Utilidades();
        private static frmGestionUsuarios pfrmGestionUsuarios;
        private static frmTipoDireccion pfrmTipoDireccion;
        private static frmTipoOcupacion pfrmTipoOcupacion;
        private static frmTipoTelefono pfrmTipoTelefono;
        private static frmGestionCliente pfrmGestionCliente;
        private static frmGestionExpediente pfrmGestionExpediente;
        private static frmGestionCuenta pfrmGestionCuenta;
        private static frmRegistroExamen pfrmRegistroExamen;
        private static frmGestionCitas pfrmGestionCitas;


        public frmMenuPrincipal()
        {
            InitializeComponent();
            this.InicioPrograma();
        }

        public void InicioPrograma()
        {
            try
            {
                frmLogin pfrmLogin = new frmLogin();
                while ((pfrmLogin.ShowDialog(this) == DialogResult.OK) || (pfrmLogin.ShowDialog(this) == DialogResult.Cancel))
                {
                    if (pfrmLogin.ShowDialog(this) == DialogResult.OK)
                    {
                        this.lblUsuario.Text = pfrmLogin.txtUsuario.Text;
                        break;
                    }
                    if (pfrmLogin.ShowDialog(this) == DialogResult.Abort)
                    {
                        components.Dispose();
                        base.Dispose();
                        break;
                    }
                }

                if (this.lblUsuario.Text.Equals("lblUsuario"))
                {
                    components.Dispose();
                        base.Dispose();
                }

            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        #region Formularios

        public void VerPrincipal()
        {
            try
            {
                this.Visible = true;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void ProcesarTodos()
        {
            try
            {
                this.CerrarTodosFormularios();
                this.IniciarTodosFormularios();
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void CerrarTodosFormularios()
        {
            this.CerrarFormulario(pfrmGestionUsuarios);
            this.CerrarFormulario(pfrmTipoDireccion);
            this.CerrarFormulario(pfrmTipoOcupacion);
            this.CerrarFormulario(pfrmTipoTelefono);
            this.CerrarFormulario(pfrmGestionCliente);
            this.CerrarFormulario(pfrmGestionExpediente);
            this.CerrarFormulario(pfrmGestionCuenta);
            this.CerrarFormulario(pfrmRegistroExamen);
            this.CerrarFormulario(pfrmGestionCitas);

        }

        public void IniciarTodosFormularios()
        {
            pfrmGestionUsuarios = new frmGestionUsuarios();
            pfrmTipoDireccion = new frmTipoDireccion();
            pfrmTipoOcupacion = new frmTipoOcupacion();
            pfrmTipoTelefono = new frmTipoTelefono();
            pfrmGestionCliente = new frmGestionCliente();
            pfrmGestionExpediente = new frmGestionExpediente();
            pfrmGestionCuenta = new frmGestionCuenta();
            pfrmRegistroExamen = new frmRegistroExamen();
            pfrmGestionCitas = new frmGestionCitas();
        }

        public void CerrarFormulario(Form frmHijo)
        {
            try
            {
                frmHijo.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void ActivarFormulario(Form frmHijo)
        {
            try
            {
                frmHijo.MdiParent = this;
                frmHijo.WindowState = FormWindowState.Normal;
                frmHijo.ControlBox = true;
                frmHijo.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, this.Text);
            }
        }

        #endregion

        private void frmMenuPrincipal_Load(object sender, EventArgs e)
        {
            this.IniciarTodosFormularios();
        }

        private void examenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmRegistroExamen);
        }

        private void usuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmGestionUsuarios);
        }

        private void tiposDireccionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmTipoDireccion);
        }

        private void ocupacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmTipoOcupacion);
        }

        private void tiposDeTelefonosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmTipoTelefono);
        }

        private void geToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmGestionCliente);
        }

        private void gestionExpedienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmGestionExpediente);
        }

        private void gestionCuentaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmGestionCuenta);
        }

        private void gestionDeCitaasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.ProcesarTodos();
            this.ActivarFormulario(pfrmGestionCitas);
        }
    }
}
