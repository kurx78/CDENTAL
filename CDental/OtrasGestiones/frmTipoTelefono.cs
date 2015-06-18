using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CDental.WSCDental;

namespace CDental.OtrasGestiones
{
    public partial class frmTipoTelefono : Form
    {
        public static Utilidades pUtilidades = new Utilidades();

        public frmTipoTelefono()
        {
            InitializeComponent();
            this.LimpiarCampos();
            this.Seleccionar(0);
        }

        private void LimpiarCampos()
        {
            try
            {
                this.txtTipoTelefono.Text = string.Empty;
                this.txtDescripcion.Text = string.Empty;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void Seleccionar(int pTipoTelefono)
        {
            try
            {
                var objTipoTelefono = new TipoTelefono();
                objTipoTelefono.Id_TipoTelefono = pTipoTelefono;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listTipoTelefono = new List<TipoTelefono>();
                    listTipoTelefono = svc.TipoTelefonoSeleccionar(objTipoTelefono);
                    if (listTipoTelefono.Count > 0)
                    {
                        this.dgTipoTelefonosDetalles.AutoGenerateColumns = false;
                        this.dgTipoTelefonosDetalles.DataSource = listTipoTelefono;
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
                var objTipoTelefono = new TipoTelefono();
                int tipoTelefono = 0;
                Int32.TryParse(this.txtTipoTelefono.Text, out tipoTelefono);
                objTipoTelefono.Id_TipoTelefono = tipoTelefono;
                objTipoTelefono.Descripcion = this.txtDescripcion.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.TipoTelefonoInsertar(objTipoTelefono);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.TipoTelefonoModificar(objTipoTelefono);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.TipoTelefonoEliminar(objTipoTelefono);
                    }
                }
                if (retorno)
                {
                    this.Seleccionar(0);
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

        private void consultarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                this.Seleccionar(Convert.ToInt32(this.txtTipoTelefono.Text));
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void insertarToolStripMenuItem_Click(object sender, EventArgs e)
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

        private void dgTipoDireccionDetalles_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                DataGridViewRow fila = dgTipoTelefonosDetalles.Rows[e.RowIndex];
                this.txtTipoTelefono.Text = Convert.ToString(fila.Cells["Id_TipoTelefono"].Value);
                this.txtDescripcion.Text = Convert.ToString(fila.Cells["Descripcion"].Value);
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
