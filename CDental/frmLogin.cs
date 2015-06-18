﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web.Services;
using System.Windows.Forms;
using CDental.WSCDental;

namespace CDental
{
    public partial class frmLogin : Form
    {
        public static Utilidades pUtilidades = new Utilidades();

        public frmLogin()
        {
            InitializeComponent();
            #if DEBUG
            this.txtUsuario.Text = "sariasf101";
            this.txtContrasena.Text = "Liga3954";
            #endif
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                var objUsuario = new Usuarios();
                objUsuario.Usuario = this.txtUsuario.Text;
                objUsuario.Contraseña = this.txtContrasena.Text;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listUsuario = new List<Usuarios>();
                    listUsuario = svc.UsuariosSeleccionar(objUsuario);
                    if (listUsuario.Count > 0)
                    {
                        var objCliente = new Cliente();
                        objCliente.Cedula = listUsuario[0].Cedula;

                        var listCliente = new List<Cliente>();
                        listCliente = svc.ClienteSeleccionar(objCliente);
                        MessageBox.Show("Bienvenido " + listCliente[0].Nombre + " al sistema de Gestion Dental", "Hola", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                        this.DialogResult = DialogResult.OK;

                    }
                    else
                        MessageBox.Show("No existe usuario o contraseña invalida", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(pUtilidades.ManejoError(false, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message),
                                "Ups..Contacta al Administrador!!!",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }


        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            try
            {
                this.DialogResult = DialogResult.Abort;
                components.Dispose();
                base.Dispose();
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
