namespace CDental.Expedientes
{
    partial class frmGestionExpediente
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
            this.txtOtrasEnfermedades = new System.Windows.Forms.TextBox();
            this.txtOtrosMedicamentos = new System.Windows.Forms.TextBox();
            this.gboxGeneral = new System.Windows.Forms.GroupBox();
            this.gboxMujeres = new System.Windows.Forms.GroupBox();
            this.txtObservaciones = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.gboxAlergico = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.gboHaPadecido = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtExpediente = new System.Windows.Forms.TextBox();
            this.txtCedula = new System.Windows.Forms.TextBox();
            this.btnGeneralEliminar = new System.Windows.Forms.Button();
            this.btnGeneralModificar = new System.Windows.Forms.Button();
            this.btnGeneralIngresar = new System.Windows.Forms.Button();
            this.btnGeneralConsultar = new System.Windows.Forms.Button();
            this.lblFecha = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.rbtnMujer = new System.Windows.Forms.RadioButton();
            this.rbtnTratamientoMedico = new System.Windows.Forms.CheckBox();
            this.rbtnTomaMedicamento = new System.Windows.Forms.CheckBox();
            this.rbtnDiabetes = new System.Windows.Forms.CheckBox();
            this.rbtnArtritis = new System.Windows.Forms.CheckBox();
            this.rbtnEnfermedadesCardiacas = new System.Windows.Forms.CheckBox();
            this.rbtnFiebreReumatica = new System.Windows.Forms.CheckBox();
            this.rbtnHepatitis = new System.Windows.Forms.CheckBox();
            this.rbtnUlceras = new System.Windows.Forms.CheckBox();
            this.rbtnTrastornosRenales = new System.Windows.Forms.CheckBox();
            this.rbtnEnfermedadesNerviosas = new System.Windows.Forms.CheckBox();
            this.rbtnOperadoInternado = new System.Windows.Forms.CheckBox();
            this.rbtnAlteracionSaludUltMeses = new System.Windows.Forms.CheckBox();
            this.rbtnOtraEnfermedadNoMencionada = new System.Windows.Forms.CheckBox();
            this.rbtnPenicilina = new System.Windows.Forms.CheckBox();
            this.rbtnSulfas = new System.Windows.Forms.CheckBox();
            this.rbtnAspirina = new System.Windows.Forms.CheckBox();
            this.rbtnReaccionAnormalAnesDental = new System.Windows.Forms.CheckBox();
            this.rbtnSangradoProlongado = new System.Windows.Forms.CheckBox();
            this.rbtnDesmayos = new System.Windows.Forms.CheckBox();
            this.rbtnEmbazada = new System.Windows.Forms.CheckBox();
            this.rbtnLactancia = new System.Windows.Forms.CheckBox();
            this.rbtnTrastornosCicloMestrual = new System.Windows.Forms.CheckBox();
            this.gboxGeneral.SuspendLayout();
            this.gboxMujeres.SuspendLayout();
            this.gboxAlergico.SuspendLayout();
            this.gboHaPadecido.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtOtrasEnfermedades
            // 
            this.txtOtrasEnfermedades.Location = new System.Drawing.Point(6, 216);
            this.txtOtrasEnfermedades.Name = "txtOtrasEnfermedades";
            this.txtOtrasEnfermedades.Size = new System.Drawing.Size(292, 20);
            this.txtOtrasEnfermedades.TabIndex = 9;
            // 
            // txtOtrosMedicamentos
            // 
            this.txtOtrosMedicamentos.Location = new System.Drawing.Point(6, 101);
            this.txtOtrosMedicamentos.Name = "txtOtrosMedicamentos";
            this.txtOtrosMedicamentos.Size = new System.Drawing.Size(258, 20);
            this.txtOtrosMedicamentos.TabIndex = 16;
            this.txtOtrosMedicamentos.Text = "Otros Medicamentos";
            // 
            // gboxGeneral
            // 
            this.gboxGeneral.Controls.Add(this.rbtnDesmayos);
            this.gboxGeneral.Controls.Add(this.rbtnSangradoProlongado);
            this.gboxGeneral.Controls.Add(this.rbtnReaccionAnormalAnesDental);
            this.gboxGeneral.Controls.Add(this.rbtnOtraEnfermedadNoMencionada);
            this.gboxGeneral.Controls.Add(this.rbtnAlteracionSaludUltMeses);
            this.gboxGeneral.Controls.Add(this.rbtnOperadoInternado);
            this.gboxGeneral.Controls.Add(this.rbtnTomaMedicamento);
            this.gboxGeneral.Controls.Add(this.rbtnTratamientoMedico);
            this.gboxGeneral.Controls.Add(this.gboxMujeres);
            this.gboxGeneral.Controls.Add(this.gboxAlergico);
            this.gboxGeneral.Controls.Add(this.gboHaPadecido);
            this.gboxGeneral.Location = new System.Drawing.Point(12, 62);
            this.gboxGeneral.Name = "gboxGeneral";
            this.gboxGeneral.Size = new System.Drawing.Size(602, 387);
            this.gboxGeneral.TabIndex = 20;
            this.gboxGeneral.TabStop = false;
            this.gboxGeneral.Text = "General";
            // 
            // gboxMujeres
            // 
            this.gboxMujeres.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.gboxMujeres.Controls.Add(this.rbtnTrastornosCicloMestrual);
            this.gboxMujeres.Controls.Add(this.rbtnLactancia);
            this.gboxMujeres.Controls.Add(this.rbtnEmbazada);
            this.gboxMujeres.Controls.Add(this.txtObservaciones);
            this.gboxMujeres.Controls.Add(this.label3);
            this.gboxMujeres.Enabled = false;
            this.gboxMujeres.Location = new System.Drawing.Point(316, 222);
            this.gboxMujeres.Name = "gboxMujeres";
            this.gboxMujeres.Size = new System.Drawing.Size(270, 159);
            this.gboxMujeres.TabIndex = 22;
            this.gboxMujeres.TabStop = false;
            this.gboxMujeres.Text = "(DAMAS)";
            // 
            // txtObservaciones
            // 
            this.txtObservaciones.Location = new System.Drawing.Point(6, 98);
            this.txtObservaciones.Multiline = true;
            this.txtObservaciones.Name = "txtObservaciones";
            this.txtObservaciones.Size = new System.Drawing.Size(258, 55);
            this.txtObservaciones.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 82);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(81, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Observaciones:";
            // 
            // gboxAlergico
            // 
            this.gboxAlergico.Controls.Add(this.rbtnAspirina);
            this.gboxAlergico.Controls.Add(this.rbtnSulfas);
            this.gboxAlergico.Controls.Add(this.rbtnPenicilina);
            this.gboxAlergico.Controls.Add(this.label2);
            this.gboxAlergico.Controls.Add(this.txtOtrosMedicamentos);
            this.gboxAlergico.Location = new System.Drawing.Point(316, 19);
            this.gboxAlergico.Name = "gboxAlergico";
            this.gboxAlergico.Size = new System.Drawing.Size(270, 128);
            this.gboxAlergico.TabIndex = 21;
            this.gboxAlergico.TabStop = false;
            this.gboxAlergico.Text = "Es usted alérgico a la:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 85);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(106, 13);
            this.label2.TabIndex = 17;
            this.label2.Text = "Otros medicamentos:";
            // 
            // gboHaPadecido
            // 
            this.gboHaPadecido.Controls.Add(this.rbtnEnfermedadesNerviosas);
            this.gboHaPadecido.Controls.Add(this.rbtnTrastornosRenales);
            this.gboHaPadecido.Controls.Add(this.rbtnUlceras);
            this.gboHaPadecido.Controls.Add(this.rbtnHepatitis);
            this.gboHaPadecido.Controls.Add(this.rbtnFiebreReumatica);
            this.gboHaPadecido.Controls.Add(this.rbtnEnfermedadesCardiacas);
            this.gboHaPadecido.Controls.Add(this.rbtnArtritis);
            this.gboHaPadecido.Controls.Add(this.rbtnDiabetes);
            this.gboHaPadecido.Controls.Add(this.label1);
            this.gboHaPadecido.Controls.Add(this.txtOtrasEnfermedades);
            this.gboHaPadecido.Location = new System.Drawing.Point(6, 65);
            this.gboHaPadecido.Name = "gboHaPadecido";
            this.gboHaPadecido.Size = new System.Drawing.Size(304, 247);
            this.gboHaPadecido.TabIndex = 20;
            this.gboHaPadecido.TabStop = false;
            this.gboHaPadecido.Text = "Ha padecido usted de:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 200);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 13);
            this.label1.TabIndex = 10;
            this.label1.Text = "Otras Enfermedades:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(9, 15);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(63, 13);
            this.label4.TabIndex = 21;
            this.label4.Text = "Expediente:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(9, 39);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(43, 13);
            this.label5.TabIndex = 22;
            this.label5.Text = "Cédula:";
            // 
            // txtExpediente
            // 
            this.txtExpediente.Location = new System.Drawing.Point(78, 12);
            this.txtExpediente.Name = "txtExpediente";
            this.txtExpediente.Size = new System.Drawing.Size(142, 20);
            this.txtExpediente.TabIndex = 23;
            // 
            // txtCedula
            // 
            this.txtCedula.Location = new System.Drawing.Point(58, 36);
            this.txtCedula.Name = "txtCedula";
            this.txtCedula.Size = new System.Drawing.Size(162, 20);
            this.txtCedula.TabIndex = 24;
            // 
            // btnGeneralEliminar
            // 
            this.btnGeneralEliminar.Location = new System.Drawing.Point(508, 12);
            this.btnGeneralEliminar.Name = "btnGeneralEliminar";
            this.btnGeneralEliminar.Size = new System.Drawing.Size(88, 23);
            this.btnGeneralEliminar.TabIndex = 28;
            this.btnGeneralEliminar.Text = "Eliminar";
            this.btnGeneralEliminar.UseVisualStyleBackColor = true;
            this.btnGeneralEliminar.Click += new System.EventHandler(this.btnGeneralEliminar_Click);
            // 
            // btnGeneralModificar
            // 
            this.btnGeneralModificar.Location = new System.Drawing.Point(414, 12);
            this.btnGeneralModificar.Name = "btnGeneralModificar";
            this.btnGeneralModificar.Size = new System.Drawing.Size(88, 23);
            this.btnGeneralModificar.TabIndex = 27;
            this.btnGeneralModificar.Text = "Modificar";
            this.btnGeneralModificar.UseVisualStyleBackColor = true;
            this.btnGeneralModificar.Click += new System.EventHandler(this.btnGeneralModificar_Click);
            // 
            // btnGeneralIngresar
            // 
            this.btnGeneralIngresar.Location = new System.Drawing.Point(320, 12);
            this.btnGeneralIngresar.Name = "btnGeneralIngresar";
            this.btnGeneralIngresar.Size = new System.Drawing.Size(88, 23);
            this.btnGeneralIngresar.TabIndex = 26;
            this.btnGeneralIngresar.Text = "Ingresar";
            this.btnGeneralIngresar.UseVisualStyleBackColor = true;
            this.btnGeneralIngresar.Click += new System.EventHandler(this.btnGeneralIngresar_Click);
            // 
            // btnGeneralConsultar
            // 
            this.btnGeneralConsultar.Location = new System.Drawing.Point(226, 12);
            this.btnGeneralConsultar.Name = "btnGeneralConsultar";
            this.btnGeneralConsultar.Size = new System.Drawing.Size(88, 23);
            this.btnGeneralConsultar.TabIndex = 25;
            this.btnGeneralConsultar.Text = "Consultar";
            this.btnGeneralConsultar.UseVisualStyleBackColor = true;
            this.btnGeneralConsultar.Click += new System.EventHandler(this.btnGeneralConsultar_Click);
            // 
            // lblFecha
            // 
            this.lblFecha.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lblFecha.AutoSize = true;
            this.lblFecha.Location = new System.Drawing.Point(530, 48);
            this.lblFecha.Name = "lblFecha";
            this.lblFecha.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.lblFecha.Size = new System.Drawing.Size(65, 13);
            this.lblFecha.TabIndex = 29;
            this.lblFecha.Text = "01/01/2000";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(419, 46);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(113, 13);
            this.label6.TabIndex = 30;
            this.label6.Text = "Fecha del Expediente:";
            // 
            // rbtnMujer
            // 
            this.rbtnMujer.AutoSize = true;
            this.rbtnMujer.Location = new System.Drawing.Point(320, 42);
            this.rbtnMujer.Name = "rbtnMujer";
            this.rbtnMujer.Size = new System.Drawing.Size(65, 17);
            this.rbtnMujer.TabIndex = 31;
            this.rbtnMujer.TabStop = true;
            this.rbtnMujer.Text = "Es mujer";
            this.rbtnMujer.UseVisualStyleBackColor = true;
            this.rbtnMujer.Visible = false;
            // 
            // rbtnTratamientoMedico
            // 
            this.rbtnTratamientoMedico.AutoSize = true;
            this.rbtnTratamientoMedico.Location = new System.Drawing.Point(6, 19);
            this.rbtnTratamientoMedico.Name = "rbtnTratamientoMedico";
            this.rbtnTratamientoMedico.Size = new System.Drawing.Size(144, 17);
            this.rbtnTratamientoMedico.TabIndex = 23;
            this.rbtnTratamientoMedico.Text = "Bajo Tratamiento Médico";
            this.rbtnTratamientoMedico.UseVisualStyleBackColor = true;
            // 
            // rbtnTomaMedicamento
            // 
            this.rbtnTomaMedicamento.AutoSize = true;
            this.rbtnTomaMedicamento.Location = new System.Drawing.Point(6, 42);
            this.rbtnTomaMedicamento.Name = "rbtnTomaMedicamento";
            this.rbtnTomaMedicamento.Size = new System.Drawing.Size(149, 17);
            this.rbtnTomaMedicamento.TabIndex = 24;
            this.rbtnTomaMedicamento.Text = "Toma algún Medicamento";
            this.rbtnTomaMedicamento.UseVisualStyleBackColor = true;
            // 
            // rbtnDiabetes
            // 
            this.rbtnDiabetes.AutoSize = true;
            this.rbtnDiabetes.Location = new System.Drawing.Point(6, 20);
            this.rbtnDiabetes.Name = "rbtnDiabetes";
            this.rbtnDiabetes.Size = new System.Drawing.Size(68, 17);
            this.rbtnDiabetes.TabIndex = 12;
            this.rbtnDiabetes.Text = "Diabetes";
            this.rbtnDiabetes.UseVisualStyleBackColor = true;
            // 
            // rbtnArtritis
            // 
            this.rbtnArtritis.AutoSize = true;
            this.rbtnArtritis.Location = new System.Drawing.Point(6, 43);
            this.rbtnArtritis.Name = "rbtnArtritis";
            this.rbtnArtritis.Size = new System.Drawing.Size(54, 17);
            this.rbtnArtritis.TabIndex = 13;
            this.rbtnArtritis.Text = "Artritis";
            this.rbtnArtritis.UseVisualStyleBackColor = true;
            // 
            // rbtnEnfermedadesCardiacas
            // 
            this.rbtnEnfermedadesCardiacas.AutoSize = true;
            this.rbtnEnfermedadesCardiacas.Location = new System.Drawing.Point(6, 66);
            this.rbtnEnfermedadesCardiacas.Name = "rbtnEnfermedadesCardiacas";
            this.rbtnEnfermedadesCardiacas.Size = new System.Drawing.Size(145, 17);
            this.rbtnEnfermedadesCardiacas.TabIndex = 14;
            this.rbtnEnfermedadesCardiacas.Text = "Enfermedades cardíacas";
            this.rbtnEnfermedadesCardiacas.UseVisualStyleBackColor = true;
            // 
            // rbtnFiebreReumatica
            // 
            this.rbtnFiebreReumatica.AutoSize = true;
            this.rbtnFiebreReumatica.Location = new System.Drawing.Point(6, 89);
            this.rbtnFiebreReumatica.Name = "rbtnFiebreReumatica";
            this.rbtnFiebreReumatica.Size = new System.Drawing.Size(104, 17);
            this.rbtnFiebreReumatica.TabIndex = 15;
            this.rbtnFiebreReumatica.Text = "Fiebre reumática";
            this.rbtnFiebreReumatica.UseVisualStyleBackColor = true;
            // 
            // rbtnHepatitis
            // 
            this.rbtnHepatitis.AutoSize = true;
            this.rbtnHepatitis.Location = new System.Drawing.Point(6, 112);
            this.rbtnHepatitis.Name = "rbtnHepatitis";
            this.rbtnHepatitis.Size = new System.Drawing.Size(67, 17);
            this.rbtnHepatitis.TabIndex = 16;
            this.rbtnHepatitis.Text = "Hepatitis";
            this.rbtnHepatitis.UseVisualStyleBackColor = true;
            // 
            // rbtnUlceras
            // 
            this.rbtnUlceras.AutoSize = true;
            this.rbtnUlceras.Location = new System.Drawing.Point(6, 135);
            this.rbtnUlceras.Name = "rbtnUlceras";
            this.rbtnUlceras.Size = new System.Drawing.Size(62, 17);
            this.rbtnUlceras.TabIndex = 17;
            this.rbtnUlceras.Text = "Ulceras";
            this.rbtnUlceras.UseVisualStyleBackColor = true;
            // 
            // rbtnTrastornosRenales
            // 
            this.rbtnTrastornosRenales.AutoSize = true;
            this.rbtnTrastornosRenales.Location = new System.Drawing.Point(6, 158);
            this.rbtnTrastornosRenales.Name = "rbtnTrastornosRenales";
            this.rbtnTrastornosRenales.Size = new System.Drawing.Size(113, 17);
            this.rbtnTrastornosRenales.TabIndex = 18;
            this.rbtnTrastornosRenales.Text = "Trastornos renales";
            this.rbtnTrastornosRenales.UseVisualStyleBackColor = true;
            // 
            // rbtnEnfermedadesNerviosas
            // 
            this.rbtnEnfermedadesNerviosas.AutoSize = true;
            this.rbtnEnfermedadesNerviosas.Location = new System.Drawing.Point(6, 181);
            this.rbtnEnfermedadesNerviosas.Name = "rbtnEnfermedadesNerviosas";
            this.rbtnEnfermedadesNerviosas.Size = new System.Drawing.Size(144, 17);
            this.rbtnEnfermedadesNerviosas.TabIndex = 19;
            this.rbtnEnfermedadesNerviosas.Text = "Enfermedades Nerviosas";
            this.rbtnEnfermedadesNerviosas.UseVisualStyleBackColor = true;
            // 
            // rbtnOperadoInternado
            // 
            this.rbtnOperadoInternado.AutoSize = true;
            this.rbtnOperadoInternado.Location = new System.Drawing.Point(6, 318);
            this.rbtnOperadoInternado.Name = "rbtnOperadoInternado";
            this.rbtnOperadoInternado.Size = new System.Drawing.Size(198, 17);
            this.rbtnOperadoInternado.TabIndex = 25;
            this.rbtnOperadoInternado.Text = "Alguna vez fue Operado o Internado";
            this.rbtnOperadoInternado.UseVisualStyleBackColor = true;
            // 
            // rbtnAlteracionSaludUltMeses
            // 
            this.rbtnAlteracionSaludUltMeses.AutoSize = true;
            this.rbtnAlteracionSaludUltMeses.Location = new System.Drawing.Point(6, 341);
            this.rbtnAlteracionSaludUltMeses.Name = "rbtnAlteracionSaludUltMeses";
            this.rbtnAlteracionSaludUltMeses.Size = new System.Drawing.Size(205, 17);
            this.rbtnAlteracionSaludUltMeses.TabIndex = 26;
            this.rbtnAlteracionSaludUltMeses.Text = "Alteración Salud en los Ultimos Meses";
            this.rbtnAlteracionSaludUltMeses.UseVisualStyleBackColor = true;
            // 
            // rbtnOtraEnfermedadNoMencionada
            // 
            this.rbtnOtraEnfermedadNoMencionada.AutoSize = true;
            this.rbtnOtraEnfermedadNoMencionada.Location = new System.Drawing.Point(6, 364);
            this.rbtnOtraEnfermedadNoMencionada.Name = "rbtnOtraEnfermedadNoMencionada";
            this.rbtnOtraEnfermedadNoMencionada.Size = new System.Drawing.Size(216, 17);
            this.rbtnOtraEnfermedadNoMencionada.TabIndex = 27;
            this.rbtnOtraEnfermedadNoMencionada.Text = "Enfermedad o Trastorno no mencionado";
            this.rbtnOtraEnfermedadNoMencionada.UseVisualStyleBackColor = true;
            // 
            // rbtnPenicilina
            // 
            this.rbtnPenicilina.AutoSize = true;
            this.rbtnPenicilina.Location = new System.Drawing.Point(6, 19);
            this.rbtnPenicilina.Name = "rbtnPenicilina";
            this.rbtnPenicilina.Size = new System.Drawing.Size(71, 17);
            this.rbtnPenicilina.TabIndex = 18;
            this.rbtnPenicilina.Text = "Penicilina";
            this.rbtnPenicilina.UseVisualStyleBackColor = true;
            // 
            // rbtnSulfas
            // 
            this.rbtnSulfas.AutoSize = true;
            this.rbtnSulfas.Location = new System.Drawing.Point(6, 42);
            this.rbtnSulfas.Name = "rbtnSulfas";
            this.rbtnSulfas.Size = new System.Drawing.Size(55, 17);
            this.rbtnSulfas.TabIndex = 19;
            this.rbtnSulfas.Text = "Sulfas";
            this.rbtnSulfas.UseVisualStyleBackColor = true;
            // 
            // rbtnAspirina
            // 
            this.rbtnAspirina.AutoSize = true;
            this.rbtnAspirina.Location = new System.Drawing.Point(6, 65);
            this.rbtnAspirina.Name = "rbtnAspirina";
            this.rbtnAspirina.Size = new System.Drawing.Size(63, 17);
            this.rbtnAspirina.TabIndex = 20;
            this.rbtnAspirina.Text = "Aspirina";
            this.rbtnAspirina.UseVisualStyleBackColor = true;
            // 
            // rbtnReaccionAnormalAnesDental
            // 
            this.rbtnReaccionAnormalAnesDental.AutoSize = true;
            this.rbtnReaccionAnormalAnesDental.Location = new System.Drawing.Point(316, 153);
            this.rbtnReaccionAnormalAnesDental.Name = "rbtnReaccionAnormalAnesDental";
            this.rbtnReaccionAnormalAnesDental.Size = new System.Drawing.Size(205, 17);
            this.rbtnReaccionAnormalAnesDental.TabIndex = 28;
            this.rbtnReaccionAnormalAnesDental.Text = "Reaccion Anormal a Anestesia Dental";
            this.rbtnReaccionAnormalAnesDental.UseVisualStyleBackColor = true;
            // 
            // rbtnSangradoProlongado
            // 
            this.rbtnSangradoProlongado.AutoSize = true;
            this.rbtnSangradoProlongado.Location = new System.Drawing.Point(316, 176);
            this.rbtnSangradoProlongado.Name = "rbtnSangradoProlongado";
            this.rbtnSangradoProlongado.Size = new System.Drawing.Size(129, 17);
            this.rbtnSangradoProlongado.TabIndex = 29;
            this.rbtnSangradoProlongado.Text = "Sangrado Prolongado";
            this.rbtnSangradoProlongado.UseVisualStyleBackColor = true;
            // 
            // rbtnDesmayos
            // 
            this.rbtnDesmayos.AutoSize = true;
            this.rbtnDesmayos.Location = new System.Drawing.Point(316, 199);
            this.rbtnDesmayos.Name = "rbtnDesmayos";
            this.rbtnDesmayos.Size = new System.Drawing.Size(75, 17);
            this.rbtnDesmayos.TabIndex = 30;
            this.rbtnDesmayos.Text = "Desmayos";
            this.rbtnDesmayos.UseVisualStyleBackColor = true;
            // 
            // rbtnEmbazada
            // 
            this.rbtnEmbazada.AutoSize = true;
            this.rbtnEmbazada.Location = new System.Drawing.Point(6, 19);
            this.rbtnEmbazada.Name = "rbtnEmbazada";
            this.rbtnEmbazada.Size = new System.Drawing.Size(115, 17);
            this.rbtnEmbazada.TabIndex = 5;
            this.rbtnEmbazada.Text = "Está Embarazada?";
            this.rbtnEmbazada.UseVisualStyleBackColor = true;
            // 
            // rbtnLactancia
            // 
            this.rbtnLactancia.AutoSize = true;
            this.rbtnLactancia.Location = new System.Drawing.Point(6, 42);
            this.rbtnLactancia.Name = "rbtnLactancia";
            this.rbtnLactancia.Size = new System.Drawing.Size(150, 17);
            this.rbtnLactancia.TabIndex = 6;
            this.rbtnLactancia.Text = "En período de Lactancia?";
            this.rbtnLactancia.UseVisualStyleBackColor = true;
            // 
            // rbtnTrastornosCicloMestrual
            // 
            this.rbtnTrastornosCicloMestrual.AutoSize = true;
            this.rbtnTrastornosCicloMestrual.Location = new System.Drawing.Point(6, 65);
            this.rbtnTrastornosCicloMestrual.Name = "rbtnTrastornosCicloMestrual";
            this.rbtnTrastornosCicloMestrual.Size = new System.Drawing.Size(229, 17);
            this.rbtnTrastornosCicloMestrual.TabIndex = 7;
            this.rbtnTrastornosCicloMestrual.Text = "Sufre trastornos durante el ciclo menstrual?";
            this.rbtnTrastornosCicloMestrual.UseVisualStyleBackColor = true;
            // 
            // frmGestionExpediente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(628, 459);
            this.Controls.Add(this.rbtnMujer);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.lblFecha);
            this.Controls.Add(this.btnGeneralEliminar);
            this.Controls.Add(this.btnGeneralModificar);
            this.Controls.Add(this.btnGeneralIngresar);
            this.Controls.Add(this.btnGeneralConsultar);
            this.Controls.Add(this.txtCedula);
            this.Controls.Add(this.txtExpediente);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.gboxGeneral);
            this.MaximizeBox = false;
            this.Name = "frmGestionExpediente";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Gestión de Expediente";
            this.gboxGeneral.ResumeLayout(false);
            this.gboxGeneral.PerformLayout();
            this.gboxMujeres.ResumeLayout(false);
            this.gboxMujeres.PerformLayout();
            this.gboxAlergico.ResumeLayout(false);
            this.gboxAlergico.PerformLayout();
            this.gboHaPadecido.ResumeLayout(false);
            this.gboHaPadecido.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtOtrasEnfermedades;
        private System.Windows.Forms.TextBox txtOtrosMedicamentos;
        private System.Windows.Forms.GroupBox gboxGeneral;
        private System.Windows.Forms.GroupBox gboxMujeres;
        private System.Windows.Forms.GroupBox gboxAlergico;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox gboHaPadecido;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtObservaciones;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtExpediente;
        private System.Windows.Forms.TextBox txtCedula;
        private System.Windows.Forms.Button btnGeneralEliminar;
        private System.Windows.Forms.Button btnGeneralModificar;
        private System.Windows.Forms.Button btnGeneralIngresar;
        private System.Windows.Forms.Button btnGeneralConsultar;
        private System.Windows.Forms.Label lblFecha;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.RadioButton rbtnMujer;
        private System.Windows.Forms.CheckBox rbtnDesmayos;
        private System.Windows.Forms.CheckBox rbtnSangradoProlongado;
        private System.Windows.Forms.CheckBox rbtnReaccionAnormalAnesDental;
        private System.Windows.Forms.CheckBox rbtnOtraEnfermedadNoMencionada;
        private System.Windows.Forms.CheckBox rbtnAlteracionSaludUltMeses;
        private System.Windows.Forms.CheckBox rbtnOperadoInternado;
        private System.Windows.Forms.CheckBox rbtnTomaMedicamento;
        private System.Windows.Forms.CheckBox rbtnTratamientoMedico;
        private System.Windows.Forms.CheckBox rbtnTrastornosCicloMestrual;
        private System.Windows.Forms.CheckBox rbtnLactancia;
        private System.Windows.Forms.CheckBox rbtnEmbazada;
        private System.Windows.Forms.CheckBox rbtnAspirina;
        private System.Windows.Forms.CheckBox rbtnSulfas;
        private System.Windows.Forms.CheckBox rbtnPenicilina;
        private System.Windows.Forms.CheckBox rbtnEnfermedadesNerviosas;
        private System.Windows.Forms.CheckBox rbtnTrastornosRenales;
        private System.Windows.Forms.CheckBox rbtnUlceras;
        private System.Windows.Forms.CheckBox rbtnHepatitis;
        private System.Windows.Forms.CheckBox rbtnFiebreReumatica;
        private System.Windows.Forms.CheckBox rbtnEnfermedadesCardiacas;
        private System.Windows.Forms.CheckBox rbtnArtritis;
        private System.Windows.Forms.CheckBox rbtnDiabetes;
    }
}