using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CDental
{
    public partial class frmHistorial : Form
    {
        public string numeroCedulaCliente = string.Empty;
        public frmHistorial(string numeroCedula)
        {
            InitializeComponent();
            numeroCedulaCliente = numeroCedula;
        }

        private void frmReportes_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'CDentalRPTHistorialDental.SP_RPT_HISTORIAL_DENTAL' table. You can move, or remove it, as needed.
            this.SP_RPT_HISTORIAL_DENTALTableAdapter.Fill(this.CDentalRPTHistorialDental.SP_RPT_HISTORIAL_DENTAL,numeroCedulaCliente);

            this.reportViewer1.RefreshReport();
        }
    }
}
