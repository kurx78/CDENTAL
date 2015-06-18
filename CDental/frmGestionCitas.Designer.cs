﻿namespace CDental
{
    partial class frmGestionCitas
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
            this.cldFechaCita = new System.Windows.Forms.MonthCalendar();
            this.grpDatosCita = new System.Windows.Forms.GroupBox();
            this.lblHoraCita = new System.Windows.Forms.Label();
            this.dtpHoraCita = new System.Windows.Forms.DateTimePicker();
            this.txtObservaciones = new System.Windows.Forms.TextBox();
            this.txtCodExpediente = new System.Windows.Forms.TextBox();
            this.lblObservaciones = new System.Windows.Forms.Label();
            this.lblExpediente = new System.Windows.Forms.Label();
            this.grpBusqueda = new System.Windows.Forms.GroupBox();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.txtNumCedula = new System.Windows.Forms.TextBox();
            this.lblCedula = new System.Windows.Forms.Label();
            this.btnProgramarCita = new System.Windows.Forms.Button();
            this.btnConsultarCitas = new System.Windows.Forms.Button();
            this.grpDatosCita.SuspendLayout();
            this.grpBusqueda.SuspendLayout();
            this.SuspendLayout();
            // 
            // cldFechaCita
            // 
            this.cldFechaCita.BackColor = System.Drawing.SystemColors.Menu;
            this.cldFechaCita.CalendarDimensions = new System.Drawing.Size(2, 1);
            this.cldFechaCita.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cldFechaCita.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.cldFechaCita.Location = new System.Drawing.Point(13, 8);
            this.cldFechaCita.Name = "cldFechaCita";
            this.cldFechaCita.TabIndex = 0;
            this.cldFechaCita.TitleBackColor = System.Drawing.SystemColors.Desktop;
            // 
            // grpDatosCita
            // 
            this.grpDatosCita.Controls.Add(this.lblHoraCita);
            this.grpDatosCita.Controls.Add(this.dtpHoraCita);
            this.grpDatosCita.Controls.Add(this.txtObservaciones);
            this.grpDatosCita.Controls.Add(this.txtCodExpediente);
            this.grpDatosCita.Controls.Add(this.lblObservaciones);
            this.grpDatosCita.Controls.Add(this.lblExpediente);
            this.grpDatosCita.Location = new System.Drawing.Point(13, 296);
            this.grpDatosCita.Name = "grpDatosCita";
            this.grpDatosCita.Size = new System.Drawing.Size(416, 191);
            this.grpDatosCita.TabIndex = 1;
            this.grpDatosCita.TabStop = false;
            this.grpDatosCita.Text = "Datos de la cita";
            // 
            // lblHoraCita
            // 
            this.lblHoraCita.AutoSize = true;
            this.lblHoraCita.Location = new System.Drawing.Point(6, 160);
            this.lblHoraCita.Name = "lblHoraCita";
            this.lblHoraCita.Size = new System.Drawing.Size(79, 13);
            this.lblHoraCita.TabIndex = 5;
            this.lblHoraCita.Text = "Hora asignada:";
            // 
            // dtpHoraCita
            // 
            this.dtpHoraCita.Location = new System.Drawing.Point(150, 156);
            this.dtpHoraCita.Name = "dtpHoraCita";
            this.dtpHoraCita.Size = new System.Drawing.Size(239, 20);
            this.dtpHoraCita.TabIndex = 4;
            // 
            // txtObservaciones
            // 
            this.txtObservaciones.Location = new System.Drawing.Point(150, 67);
            this.txtObservaciones.Multiline = true;
            this.txtObservaciones.Name = "txtObservaciones";
            this.txtObservaciones.Size = new System.Drawing.Size(239, 74);
            this.txtObservaciones.TabIndex = 3;
            // 
            // txtCodExpediente
            // 
            this.txtCodExpediente.Location = new System.Drawing.Point(150, 31);
            this.txtCodExpediente.Name = "txtCodExpediente";
            this.txtCodExpediente.Size = new System.Drawing.Size(239, 20);
            this.txtCodExpediente.TabIndex = 2;
            // 
            // lblObservaciones
            // 
            this.lblObservaciones.AutoSize = true;
            this.lblObservaciones.Location = new System.Drawing.Point(6, 70);
            this.lblObservaciones.Name = "lblObservaciones";
            this.lblObservaciones.Size = new System.Drawing.Size(138, 13);
            this.lblObservaciones.TabIndex = 1;
            this.lblObservaciones.Text = "Observaciones Adicionales:";
            // 
            // lblExpediente
            // 
            this.lblExpediente.AutoSize = true;
            this.lblExpediente.Location = new System.Drawing.Point(6, 34);
            this.lblExpediente.Name = "lblExpediente";
            this.lblExpediente.Size = new System.Drawing.Size(129, 13);
            this.lblExpediente.TabIndex = 0;
            this.lblExpediente.Text = "Expediente Relacionado: ";
            // 
            // grpBusqueda
            // 
            this.grpBusqueda.Controls.Add(this.btnBuscar);
            this.grpBusqueda.Controls.Add(this.txtNumCedula);
            this.grpBusqueda.Controls.Add(this.lblCedula);
            this.grpBusqueda.Location = new System.Drawing.Point(13, 205);
            this.grpBusqueda.Name = "grpBusqueda";
            this.grpBusqueda.Size = new System.Drawing.Size(416, 75);
            this.grpBusqueda.TabIndex = 2;
            this.grpBusqueda.TabStop = false;
            this.grpBusqueda.Text = "Buscar expediente";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(305, 19);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(95, 41);
            this.btnBuscar.TabIndex = 3;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // txtNumCedula
            // 
            this.txtNumCedula.Location = new System.Drawing.Point(152, 31);
            this.txtNumCedula.Name = "txtNumCedula";
            this.txtNumCedula.Size = new System.Drawing.Size(139, 20);
            this.txtNumCedula.TabIndex = 2;
            // 
            // lblCedula
            // 
            this.lblCedula.AutoSize = true;
            this.lblCedula.Location = new System.Drawing.Point(6, 34);
            this.lblCedula.Name = "lblCedula";
            this.lblCedula.Size = new System.Drawing.Size(98, 13);
            this.lblCedula.TabIndex = 0;
            this.lblCedula.Text = "Número de Cédula:";
            // 
            // btnProgramarCita
            // 
            this.btnProgramarCita.Location = new System.Drawing.Point(68, 502);
            this.btnProgramarCita.Name = "btnProgramarCita";
            this.btnProgramarCita.Size = new System.Drawing.Size(144, 41);
            this.btnProgramarCita.TabIndex = 4;
            this.btnProgramarCita.Text = "Programar cita";
            this.btnProgramarCita.UseVisualStyleBackColor = true;
            this.btnProgramarCita.Click += new System.EventHandler(this.btnProgramarCita_Click);
            // 
            // btnConsultarCitas
            // 
            this.btnConsultarCitas.Location = new System.Drawing.Point(218, 502);
            this.btnConsultarCitas.Name = "btnConsultarCitas";
            this.btnConsultarCitas.Size = new System.Drawing.Size(144, 41);
            this.btnConsultarCitas.TabIndex = 5;
            this.btnConsultarCitas.Text = "Ver citas";
            this.btnConsultarCitas.UseVisualStyleBackColor = true;
            this.btnConsultarCitas.Click += new System.EventHandler(this.btnConsultarCitas_Click);
            // 
            // frmGestionCitas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(439, 555);
            this.Controls.Add(this.btnConsultarCitas);
            this.Controls.Add(this.btnProgramarCita);
            this.Controls.Add(this.grpBusqueda);
            this.Controls.Add(this.grpDatosCita);
            this.Controls.Add(this.cldFechaCita);
            this.Name = "frmGestionCitas";
            this.Text = "Programar cita";
            this.grpDatosCita.ResumeLayout(false);
            this.grpDatosCita.PerformLayout();
            this.grpBusqueda.ResumeLayout(false);
            this.grpBusqueda.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.MonthCalendar cldFechaCita;
        private System.Windows.Forms.GroupBox grpDatosCita;
        private System.Windows.Forms.Button btnProgramarCita;
        private System.Windows.Forms.TextBox txtObservaciones;
        private System.Windows.Forms.TextBox txtCodExpediente;
        private System.Windows.Forms.Label lblObservaciones;
        private System.Windows.Forms.Label lblExpediente;
        private System.Windows.Forms.GroupBox grpBusqueda;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.TextBox txtNumCedula;
        private System.Windows.Forms.Label lblCedula;
        private System.Windows.Forms.Label lblHoraCita;
        private System.Windows.Forms.DateTimePicker dtpHoraCita;
        private System.Windows.Forms.Button btnConsultarCitas;
    }
}