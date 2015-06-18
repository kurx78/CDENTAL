using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using CDental.WSCDental;

namespace CDental
{
    public partial class frmGestionCitas : Form
    {
        public int expedienteSeleccionado = 0;
        public frmGestionCitas()
        {
            InitializeComponent();
            txtCodExpediente.Enabled = false;
            cldFechaCita.MaxSelectionCount = 1;
            dtpHoraCita.Format = DateTimePickerFormat.Time;
            dtpHoraCita.CustomFormat = "HH:mm"; // Only use hours and minutes
            dtpHoraCita.ShowUpDown = true;
        }
       
        public Utilidades claseUtilitaria = new Utilidades();
        
        public void BuscarExpediente(string NumeroCedula)
        {
            try
            {
                var objExpediente = new Expediente();
                objExpediente.Cedula = NumeroCedula;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    var listExpediente = new List<Expediente>();
                    listExpediente = svc.ExpedienteSeleccionar(objExpediente);
                    if (listExpediente.Count > 0)
                    {
                        var clienteExpediente = new Cliente();
                        clienteExpediente.Cedula = txtNumCedula.Text;
                        var clienteConsulta = svc.ClienteSeleccionar(clienteExpediente);
                        clienteExpediente = clienteConsulta.First();
                        txtCodExpediente.Text = listExpediente.First().Id_Expediente + " "  + clienteExpediente.Nombre 
                        + " " + clienteExpediente.Apellido1 + " " + clienteExpediente.Apellido2;
                        expedienteSeleccionado = listExpediente.First().Id_Expediente;
                    }
                }

            }
            catch (Exception)
            {

                throw;
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            bool resultadoValidacion = false;
            if (txtNumCedula.Text == string.Empty)
            {
                MessageBox.Show("Favor digitar un número de cédula válido");
            }
            else
            {
                if (txtNumCedula.Text.Length != 9)
                {
                    MessageBox.Show("El número de carácteres para la cédula son 12 y debe tener el siguiente formato: XXXXXXXXX");
                }
                else
                {
                    resultadoValidacion = claseUtilitaria.ValidarExpresionRegular(txtNumCedula.Text, @"\b\d{9}\b");
                }
            }
            if (!resultadoValidacion)
            {
                txtNumCedula.Text = string.Empty;
            }
            else
            {
                BuscarExpediente(txtNumCedula.Text);
            }

        }

        private void btnProgramarCita_Click(object sender, EventArgs e)
        {
            if (expedienteSeleccionado != 0)
            {
                var fechaSeleccionada = cldFechaCita.SelectionRange.Start;
                if (fechaSeleccionada.Date >= DateTime.Now.Date)
                {
                    TimeSpan tsHoraCita = new TimeSpan(dtpHoraCita.Value.Hour, dtpHoraCita.Value.Minute, 0);
                    var fechaCita = fechaSeleccionada.Date + tsHoraCita;
                    var citaNueva = new Cita();
                    citaNueva.Expediente = expedienteSeleccionado;
                    citaNueva.Fecha = fechaCita;
                    if (txtObservaciones.Text != string.Empty)
                    {
                        citaNueva.Observaciones = txtObservaciones.Text;
                    }
                    else 
                    {
                        citaNueva.Observaciones = "NA";
                    }
                    
                    using (CDentalSoapClient svc = new CDentalSoapClient())
                    {
                        var citasReservadas = svc.CitaSeleccionarCitasReservadas(citaNueva);
                        bool citaColisiona = false;
                        if (citasReservadas.Count > 0)
                        {
                            foreach (Cita cita in citasReservadas)
                            {
                                if (cita.Fecha.Hour == citaNueva.Fecha.Hour)
                                { 
                                    citaColisiona = true; 
                                }
                            }

                        }
                        if (!citaColisiona)
                        {
                            var resultadoCita = svc.CitaInsertar(citaNueva);
                            if (resultadoCita)
                            {

                                MessageBox.Show("Cita ingresada correctamente");
                                txtNumCedula.Text = string.Empty;
                                expedienteSeleccionado = 0;
                                txtCodExpediente.Text = string.Empty;
                                txtObservaciones.Text = string.Empty;
                            }
                            else
                            {
                                MessageBox.Show("Error al registrar la cita");
                            }
                        }
                        else 
                        {
                            MessageBox.Show("Existe una cita previamente programada, favor seleccionar una hora diferente");
                        }

                        
                    }

                }
                else
                {
                    MessageBox.Show("La fecha de la cita debe ser para el día de hoy o mayor");
                }
            }
            else 
            {
                MessageBox.Show("Es necesario seleccionar un expediente, utilice la sección de búsqueda para encontrarlo mediante el número de cédula del cliente");
            }
        }

        private void btnConsultarCitas_Click(object sender, EventArgs e)
        {
            if (expedienteSeleccionado != 0)
            {
                frmCitas fCitas = new frmCitas(expedienteSeleccionado);
                fCitas.Show();

            }
            else
            { MessageBox.Show("Es necesario escoger un expediente"); }
        }
    }
}
