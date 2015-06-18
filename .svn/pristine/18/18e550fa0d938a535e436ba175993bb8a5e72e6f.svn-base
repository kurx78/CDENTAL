namespace CDental
{
    partial class frmCitas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.SP_RPT_CITAS_USUARIOBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.CDentalDataSet = new CDental.CDentalDataSet();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.SP_RPT_CITAS_USUARIOTableAdapter = new CDental.CDentalDataSetTableAdapters.SP_RPT_CITAS_USUARIOTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.SP_RPT_CITAS_USUARIOBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CDentalDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // SP_RPT_CITAS_USUARIOBindingSource
            // 
            this.SP_RPT_CITAS_USUARIOBindingSource.DataMember = "SP_RPT_CITAS_USUARIO";
            this.SP_RPT_CITAS_USUARIOBindingSource.DataSource = this.CDentalDataSet;
            // 
            // CDentalDataSet
            // 
            this.CDentalDataSet.DataSetName = "CDentalDataSet";
            this.CDentalDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "dsCitasUsuario";
            reportDataSource1.Value = this.SP_RPT_CITAS_USUARIOBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "CDental.Reportes.rptCitasUsuario.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(667, 437);
            this.reportViewer1.TabIndex = 0;
            // 
            // SP_RPT_CITAS_USUARIOTableAdapter
            // 
            this.SP_RPT_CITAS_USUARIOTableAdapter.ClearBeforeFill = true;
            // 
            // frmCitas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(667, 437);
            this.Controls.Add(this.reportViewer1);
            this.Name = "frmCitas";
            this.Text = "Citas por Usuario";
            this.Load += new System.EventHandler(this.frmCitas_Load);
            ((System.ComponentModel.ISupportInitialize)(this.SP_RPT_CITAS_USUARIOBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CDentalDataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource SP_RPT_CITAS_USUARIOBindingSource;
        private CDentalDataSet CDentalDataSet;
        private CDentalDataSetTableAdapters.SP_RPT_CITAS_USUARIOTableAdapter SP_RPT_CITAS_USUARIOTableAdapter;
    }
}