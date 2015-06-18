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
    public partial class frmCitas : Form
    {
        public int codigoExpediente = 0;
        public frmCitas(int codExpediente)
        {
            codigoExpediente = codExpediente;
            InitializeComponent();
        }

        private void frmCitas_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'CDentalDataSet.SP_RPT_CITAS_USUARIO' table. You can move, or remove it, as needed.
            this.SP_RPT_CITAS_USUARIOTableAdapter.Fill(this.CDentalDataSet.SP_RPT_CITAS_USUARIO,codigoExpediente);

            this.reportViewer1.RefreshReport();
        }
    }
}
