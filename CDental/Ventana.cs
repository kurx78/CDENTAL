using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CDental
{
    public class Ventana
    {
        //miembros protegidos 
        private Form frmPrincipal = null;
        public Ventana(Form _principal)
        {
            frmPrincipal = _principal;
        }
        //
        // Activa Formulario "hijo"
        public void ActivarFormulario(Form frmHijo)
        {
            try
            {
                //Cerramos el formulario activo
                CerrarFormulario();
                //Se asigna el formulario Padre
                frmHijo.MdiParent = frmPrincipal;
                //Se establece el diseño
                frmHijo.WindowState = FormWindowState.Normal;

                frmHijo.ControlBox = true;
                
                //Se muestra fromulario hijo
                frmHijo.Show();
                //Visualizando nombre del formulario hijo en el formulario padre 

            }
            catch (Exception ex) 
            { 
                MessageBox.Show(ex.Message, frmPrincipal.Text); 
            }
        }
        // Cerramos el Formulario Hijo actico
        public void CerrarFormulario()
        {
            try
            {
                Form activo = new Form();
                activo = frmPrincipal.ActiveMdiChild;
                activo.Close();

            }
            catch (Exception) 
            {

            }
        }


    }
}
