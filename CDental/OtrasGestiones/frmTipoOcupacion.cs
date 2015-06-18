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
    public partial class frmTipoOcupacion : Form
    {
        public static Utilidades pUtilidades = new Utilidades();
        public frmTipoOcupacion()
        {
            InitializeComponent();
            this.LimpiarCampos();
            this.Seleccionar(0);
        }

        private void LimpiarCampos()
        {
            try
            {
                this.txtOcupacion.Text = string.Empty;
                this.txtDescripcion.Text = string.Empty;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void Seleccionar(int pOcupacion)
        {
            try
            {
                var objTipoOcupacion = new TipoOcupacion();
                objTipoOcupacion.Ocupacion = pOcupacion;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listTipoDireccion = new List<TipoOcupacion>();
                    listTipoDireccion = svc.TipoOcupacionSeleccionar(objTipoOcupacion);
                    if (listTipoDireccion.Count > 0)
                    {
                        this.dgTipoDireccionDetalles.AutoGenerateColumns = false;
                        this.dgTipoDireccionDetalles.DataSource = listTipoDireccion;
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
                var objTipoOcupacion = new TipoOcupacion();
                int tipoOcupacion = 0;
                Int32.TryParse(this.txtOcupacion.Text, out tipoOcupacion);
                objTipoOcupacion.Ocupacion = tipoOcupacion;
                objTipoOcupacion.Descripcion = this.txtDescripcion.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.TipoOcupacionInsertar(objTipoOcupacion);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.TipoOcupacionModificar(objTipoOcupacion);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.TipoOcupacionEliminar(objTipoOcupacion);
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

        private void dgTipoDireccionDetalles_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                DataGridViewRow fila = dgTipoDireccionDetalles.Rows[e.RowIndex];
                this.txtOcupacion.Text = Convert.ToString(fila.Cells["Ocupacion"].Value);
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

        private void consultarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Seleccionar(Convert.ToInt32(this.txtOcupacion.Text));
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
    }
}
