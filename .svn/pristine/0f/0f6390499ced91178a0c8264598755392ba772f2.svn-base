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

    public partial class frmGestionCliente : Form
    {
        Utilidades pUtilidades = new Utilidades();

        public List<DireccionesCliente> listDireccionesCliente { get; set; }

        public frmGestionCliente()
        {
            InitializeComponent();
            this.LlenarCombosDatosPersonales();
        }

        #region Metodos de Pantalla

        #region Combos

        private void LlenarComboSexo()
        {
            try
            {
                List<Item> lista = new List<Item>();

                lista.Add(new Item("Masculino", false));
                lista.Add(new Item("Femenino", true));

                cboxSexo.DisplayMember = "Name";
                cboxSexo.ValueMember = "Value";
                cboxSexo.DataSource = lista;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarTipoTelefono()
        {
            try
            {
                this.cboxTelefonosTipoTelefono.DataSource = pUtilidades.llenarComboTipoTelefono(); ;
                this.cboxTelefonosTipoTelefono.DisplayMember = "Descripcion";
                this.cboxTelefonosTipoTelefono.ValueMember = "Id_TipoTelefono";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarParentesco()
        {
            try
            {
                this.cboxParentesco.DataSource = pUtilidades.llenarComboTipoParentesco(); ;
                this.cboxParentesco.DisplayMember = "Descripcion";
                this.cboxParentesco.ValueMember = "Id_TipoParentesco";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarOcupacion()
        {
            try
            {
                this.cboxOcupacion.DataSource = pUtilidades.llenarComboTipoOcupacion(); ;
                this.cboxOcupacion.DisplayMember = "Descripcion";
                this.cboxOcupacion.ValueMember = "Ocupacion";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarPaises()
        {
            try
            {
                this.cboxDireccionesPais.DataSource = pUtilidades.llenarComboPais(); ;
                this.cboxDireccionesPais.DisplayMember = "Descripcion";
                this.cboxDireccionesPais.ValueMember = "Id_pais";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarTipoDireccion()
        {
            try
            {
                this.cboxDireccionesTipoDireccion.DataSource = pUtilidades.llenarComboTipoDireccion(); ;
                this.cboxDireccionesTipoDireccion.DisplayMember = "Descripcion";
                this.cboxDireccionesTipoDireccion.ValueMember = "Id_TipoDireccion";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarProvincia()
        {
            try
            {
                this.cboxDireccionesProvincia.DataSource = pUtilidades.llenarComboProvincia(); ;
                this.cboxDireccionesProvincia.DisplayMember = "Descripcion";
                this.cboxDireccionesProvincia.ValueMember = "Id_Provincia";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarCanton(int pProvincia)
        {
            try
            {
                this.cboxDireccionesCanton.DataSource = pUtilidades.llenarComboCanton(pProvincia); ;
                this.cboxDireccionesCanton.DisplayMember = "Descripcion";
                this.cboxDireccionesCanton.ValueMember = "Id_Canton";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void LlenarDistrito(int pProvincia, int pCanton)
        {
            try
            {
                this.cboxDireccionesDistrito.DataSource = pUtilidades.llenarComboDistrito(pProvincia, pCanton);
                this.cboxDireccionesDistrito.DisplayMember = "Descripcion";
                this.cboxDireccionesDistrito.ValueMember = "Id_Distrito";
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void cboxDireccionesProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int pProvincia = ((CDental.WSCDental.Provincia)(this.cboxDireccionesProvincia.SelectedItem)).Id_provincia;
                this.LlenarCanton(pProvincia);
                this.cboxDireccionesCanton.SelectedIndex = 0;
                this.LlenarDistrito(0, 0);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

        }

        private void cboxDireccionesCanton_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int pProvincia = ((CDental.WSCDental.Provincia)(this.cboxDireccionesProvincia.SelectedItem)).Id_provincia;
                int pCanton = ((CDental.WSCDental.Canton)(this.cboxDireccionesCanton.SelectedItem)).Id_canton;
                this.LlenarDistrito(pProvincia, pCanton);
                this.cboxDireccionesDistrito.SelectedIndex = 0;
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

        #region Datos Personales

        private void LlenarCombosDatosPersonales()
        {
            try
            {
                this.LlenarParentesco();
                this.LlenarOcupacion();
                this.LlenarComboSexo();
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        #endregion

        #region Direcciones

        private void LlenarCombosDirecciones()
        {
            try
            {
                this.LlenarPaises();
                this.LlenarTipoDireccion();
                this.LlenarProvincia();
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        #endregion

        #region Telefonos

        private void LlenarCombosTelefonos()
        {
            try
            {
                this.LlenarTipoTelefono();
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        #endregion

        #region Habilitar

        private void HabilitarDireccionesCliente()
        {
            try
            {
                this.gboxDirecciones.Enabled = true;
                this.LlenarCombosDirecciones();
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void HabilitarTelefonosCliente()
        {
            try
            {
                this.gboxTelefonos.Enabled = true;
                this.LlenarCombosTelefonos();
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        #endregion

        #region Limpiar

        private void LimpiarTelefonosCliente()
        {
            try
            {
                this.txtTelefonosTelefono.Text = string.Empty;
                this.txtTelefonosExtension.Text = string.Empty;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void LimpiarDireccionesCliente()
        {
            try
            {
                this.txtDireccion.Text = string.Empty;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        #endregion

        #region Acciones General

        private void SeleccionarCliente(string pCedula)
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
                        this.txtNombre.Text = listCliente[0].Nombre;
                        this.txtApellido1.Text = listCliente[0].Apellido1;
                        this.txtApellido2.Text = listCliente[0].Apellido2;
                        this.dtFechaNacimiento.Value = listCliente[0].FechaNacimiento;
                        this.cboxOcupacion.SelectedValue = listCliente[0].TipoOcupacion;
                        this.txtEmergenciaAvisar.Text = listCliente[0].EmergenciaAvisar;
                        this.cboxSexo.SelectedValue = listCliente[0].Dama;
                        this.txtMedico.Text = listCliente[0].Medico;
                    }
                }
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private bool RealizarAccionCliente(string pAccion)
        {
            bool retorno = false;
            try
            {
                var objCliente = new Cliente();

                objCliente.Cedula = this.txtCedula.Text;
                objCliente.Nombre = this.txtNombre.Text;
                objCliente.Apellido1 = this.txtApellido1.Text;
                objCliente.Apellido2 = this.txtApellido2.Text;
                objCliente.FechaNacimiento = this.dtFechaNacimiento.Value;
                objCliente.TipoOcupacion = (int)this.cboxOcupacion.SelectedValue;
                objCliente.Dama = (bool)this.cboxSexo.SelectedValue;
                objCliente.EmergenciaAvisar = this.txtEmergenciaAvisar.Text;
                objCliente.Medico = this.txtMedico.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.ClienteInsertar(objCliente);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.ClienteModificar(objCliente);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.ClienteEliminar(objCliente);
                    }
                }
                if (retorno)
                {

                }
                return retorno;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private bool RealizarAccionTelefonos(string pAccion)
        {
            bool retorno = false;
            try
            {
                var objTelefonos = new Telefonos();

                objTelefonos.Cedula = this.txtCedula.Text;
                objTelefonos.TipoTelefono = (int)this.cboxTelefonosTipoTelefono.SelectedValue;
                objTelefonos.Telefono = this.txtTelefonosTelefono.Text;
                objTelefonos.Extension = this.txtTelefonosExtension.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.TelefonosInsertar(objTelefonos);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.TelefonosModificar(objTelefonos);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.TelefonosEliminar(objTelefonos);
                    }
                }
                if (retorno)
                {
                    this.SeleccionarTelefonosCliente(objTelefonos.Cedula);
                    this.LimpiarTelefonosCliente();
                }
                return retorno;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private bool RealizarAccionDireccionesCliente(string pAccion)
        {
            bool retorno = false;
            try
            {
                var objDireccionesCliente = new DireccionesCliente();

                objDireccionesCliente.Cedula = this.txtCedula.Text;
                objDireccionesCliente.Id_pais = (int)this.cboxDireccionesPais.SelectedValue;
                objDireccionesCliente.Id_provincia = (int)this.cboxDireccionesProvincia.SelectedValue;
                objDireccionesCliente.Id_canton = (int)this.cboxDireccionesCanton.SelectedValue;
                objDireccionesCliente.Id_distrito = (int)this.cboxDireccionesDistrito.SelectedValue;
                objDireccionesCliente.TipoDireccion = (int)this.cboxDireccionesTipoDireccion.SelectedValue;
                objDireccionesCliente.Direccion = this.txtDireccion.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    if (Acciones.Insertar.Equals(pAccion))
                    {
                        retorno = svc.DireccionesClienteInsertar(objDireccionesCliente);
                    }
                    if (Acciones.Modificar.Equals(pAccion))
                    {
                        retorno = svc.DireccionesClienteModificar(objDireccionesCliente);
                    }
                    if (Acciones.Eliminar.Equals(pAccion))
                    {
                        retorno = svc.DireccionesClienteEliminar(objDireccionesCliente);
                    }
                }
                if (retorno)
                {
                    this.SeleccionarDireccionesCliente(objDireccionesCliente.Cedula);
                    this.LimpiarDireccionesCliente();
                }
                return retorno;
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        private void SeleccionarTelefonosCliente(string pCedula)
        {
            try
            {
                var objTelefonos = new Telefonos();
                objTelefonos.Cedula = pCedula;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listTelefonos = new List<Telefonos>();
                    listTelefonos = svc.TelefonosSeleccionar(objTelefonos);
                    if (listTelefonos.Count > 0)
                    {
                        this.dgTelefonoDetalle.AutoGenerateColumns = false;
                        this.dgTelefonoDetalle.DataSource = listTelefonos;
                    }
                }
            }
            catch (Exception ex)
            {
                pUtilidades.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        private void SeleccionarDireccionesCliente(string pCedula)
        {
            try
            {
                var objDireccionesCliente = new DireccionesCliente();
                objDireccionesCliente.Cedula = pCedula;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listDireccionesCliente = new List<DireccionesCliente>();
                    listDireccionesCliente = svc.DireccionesClienteSeleccionar(objDireccionesCliente);
                    if (listDireccionesCliente.Count > 0)
                    {
                        this.dgDirecciones.AutoGenerateColumns = false;
                        this.dgDirecciones.DataSource = listDireccionesCliente;
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

        #endregion

        #region Eventos de Control

        #region General

        private void btnGeneralConsultar_Click(object sender, EventArgs e)
        {
            try
            {
                string pCedula = this.txtCedula.Text;
                this.SeleccionarCliente(pCedula);

                this.HabilitarTelefonosCliente();
                this.SeleccionarTelefonosCliente(pCedula);

                this.HabilitarDireccionesCliente();
                this.SeleccionarDireccionesCliente(pCedula);
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
                string pCedula = this.txtCedula.Text;

                if (this.RealizarAccionCliente(Acciones.Insertar))
                {
                    this.HabilitarTelefonosCliente();
                    this.SeleccionarTelefonosCliente(pCedula);

                    this.HabilitarDireccionesCliente();
                    this.SeleccionarDireccionesCliente(pCedula);
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        private void btnGeneralModificar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionCliente(Acciones.Modificar);
            }
            catch (Exception)
            {
                throw;
            }
        }

        private void btnGeneralEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionCliente(Acciones.Eliminar);
            }
            catch (Exception)
            {
                throw;
            }
        }

        #endregion

        #region Telefonos

        private void btnTelefonosIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionTelefonos(Acciones.Insertar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void btnTelefonosModificar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionTelefonos(Acciones.Modificar);
            }
            catch (Exception)
            {
                throw;
            }
        }

        private void btnTelefonosEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionTelefonos(Acciones.Eliminar);
            }
            catch (Exception)
            {
                throw;
            }
        }

        #endregion

        #region Direcciones

        private void btnDireccionesIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionDireccionesCliente(Acciones.Insertar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void btnDireccionesModificar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionDireccionesCliente(Acciones.Modificar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void btnDireccionesEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                this.RealizarAccionDireccionesCliente(Acciones.Eliminar);
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

        #region Seleccionar Detalle

        private void dgTelefonoDetalle_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                DataGridViewRow fila = dgTelefonoDetalle.Rows[e.RowIndex];
                this.cboxTelefonosTipoTelefono.SelectedValue = Convert.ToInt32(fila.Cells["TipoTelefono"].Value);
                this.txtTelefonosTelefono.Text = Convert.ToString(fila.Cells["Telefono"].Value);
                this.txtTelefonosExtension.Text = Convert.ToString(fila.Cells["Extension"].Value);
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }

        private void dgDirecciones_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                DataGridViewRow fila = dgDirecciones.Rows[e.RowIndex];
                this.cboxDireccionesTipoDireccion.SelectedValue = Convert.ToInt32(fila.Cells["TipoDireccion"].Value);
                this.cboxDireccionesPais.SelectedValue = Convert.ToInt32(fila.Cells["Id_pais"].Value);
                this.cboxDireccionesProvincia.SelectedValue = Convert.ToInt32(fila.Cells["Id_provincia"].Value);

                this.LlenarCanton(Convert.ToInt32(fila.Cells["Id_provincia"].Value));
                this.cboxDireccionesCanton.SelectedValue = Convert.ToInt32(fila.Cells["Id_canton"].Value);

                this.LlenarDistrito(Convert.ToInt32(fila.Cells["Id_provincia"].Value), Convert.ToInt32(fila.Cells["Id_canton"].Value));
                this.cboxDireccionesDistrito.SelectedValue = Convert.ToInt32(fila.Cells["Id_distrito"].Value);


                this.txtDireccion.Text = Convert.ToString(fila.Cells["Direccion"].Value);
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

        #endregion

    }

    public class Item
    {
        public string Name { get; set; }
        public bool Value { get; set; }

        public Item(string name, bool value)
        {
            Name = name;
            Value = value;
        }

        public override string ToString()
        {
            return Name;
        }
    }
}
