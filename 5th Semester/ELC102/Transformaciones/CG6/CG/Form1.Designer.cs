namespace CG
{
    partial class CG
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CG));
            this.CerrarPoligono = new System.Windows.Forms.CheckBox();
            this.objetosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.crearToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.guardarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cargarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.label2 = new System.Windows.Forms.Label();
            this.transTraslacionX = new System.Windows.Forms.TextBox();
            this.transTraslacionY = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.transEscalaY = new System.Windows.Forms.TextBox();
            this.transEscalaX = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.transAngulo = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.transReflexionX = new System.Windows.Forms.CheckBox();
            this.transReflexionY = new System.Windows.Forms.CheckBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.trackBar1 = new System.Windows.Forms.TrackBar();
            this.ListaPoligonos = new System.Windows.Forms.ListView();
            this.button4 = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar1)).BeginInit();
            this.SuspendLayout();
            // 
            // CerrarPoligono
            // 
            this.CerrarPoligono.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.CerrarPoligono.AutoSize = true;
            this.CerrarPoligono.BackColor = System.Drawing.Color.Transparent;
            this.CerrarPoligono.Location = new System.Drawing.Point(1057, 56);
            this.CerrarPoligono.Name = "CerrarPoligono";
            this.CerrarPoligono.Size = new System.Drawing.Size(252, 36);
            this.CerrarPoligono.TabIndex = 1;
            this.CerrarPoligono.Text = "Cerrar Poligono";
            this.CerrarPoligono.UseVisualStyleBackColor = false;
            // 
            // objetosToolStripMenuItem
            // 
            this.objetosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.crearToolStripMenuItem,
            this.guardarToolStripMenuItem,
            this.cargarToolStripMenuItem});
            this.objetosToolStripMenuItem.Name = "objetosToolStripMenuItem";
            this.objetosToolStripMenuItem.Size = new System.Drawing.Size(122, 45);
            this.objetosToolStripMenuItem.Text = "Objeto";
            // 
            // crearToolStripMenuItem
            // 
            this.crearToolStripMenuItem.Name = "crearToolStripMenuItem";
            this.crearToolStripMenuItem.Size = new System.Drawing.Size(238, 46);
            this.crearToolStripMenuItem.Text = "Crear";
            this.crearToolStripMenuItem.Click += new System.EventHandler(this.crearToolStripMenuItem_Click);
            // 
            // guardarToolStripMenuItem
            // 
            this.guardarToolStripMenuItem.Name = "guardarToolStripMenuItem";
            this.guardarToolStripMenuItem.Size = new System.Drawing.Size(238, 46);
            this.guardarToolStripMenuItem.Text = "Guardar";
            this.guardarToolStripMenuItem.Click += new System.EventHandler(this.guardarToolStripMenuItem_Click);
            // 
            // cargarToolStripMenuItem
            // 
            this.cargarToolStripMenuItem.Name = "cargarToolStripMenuItem";
            this.cargarToolStripMenuItem.Size = new System.Drawing.Size(238, 46);
            this.cargarToolStripMenuItem.Text = "Cargar";
            this.cargarToolStripMenuItem.Click += new System.EventHandler(this.cargarToolStripMenuItem_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(40, 40);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.objetosToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1309, 49);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Location = new System.Drawing.Point(12, 56);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(147, 32);
            this.label2.TabIndex = 5;
            this.label2.Text = "Traslacion";
            // 
            // transTraslacionX
            // 
            this.transTraslacionX.Location = new System.Drawing.Point(59, 91);
            this.transTraslacionX.Name = "transTraslacionX";
            this.transTraslacionX.Size = new System.Drawing.Size(100, 38);
            this.transTraslacionX.TabIndex = 6;
            // 
            // transTraslacionY
            // 
            this.transTraslacionY.Location = new System.Drawing.Point(222, 91);
            this.transTraslacionY.Name = "transTraslacionY";
            this.transTraslacionY.Size = new System.Drawing.Size(100, 38);
            this.transTraslacionY.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Location = new System.Drawing.Point(12, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(42, 32);
            this.label3.TabIndex = 8;
            this.label3.Text = "X:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Location = new System.Drawing.Point(174, 91);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(42, 32);
            this.label4.TabIndex = 9;
            this.label4.Text = "Y:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Location = new System.Drawing.Point(174, 176);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 32);
            this.label5.TabIndex = 14;
            this.label5.Text = "Y:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Location = new System.Drawing.Point(12, 176);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(42, 32);
            this.label6.TabIndex = 13;
            this.label6.Text = "X:";
            // 
            // transEscalaY
            // 
            this.transEscalaY.Location = new System.Drawing.Point(222, 176);
            this.transEscalaY.Name = "transEscalaY";
            this.transEscalaY.Size = new System.Drawing.Size(100, 38);
            this.transEscalaY.TabIndex = 12;
            // 
            // transEscalaX
            // 
            this.transEscalaX.Location = new System.Drawing.Point(59, 176);
            this.transEscalaX.Name = "transEscalaX";
            this.transEscalaX.Size = new System.Drawing.Size(100, 38);
            this.transEscalaX.TabIndex = 11;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Location = new System.Drawing.Point(12, 141);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(101, 32);
            this.label7.TabIndex = 10;
            this.label7.Text = "Escala";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.Transparent;
            this.label8.Location = new System.Drawing.Point(12, 227);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(128, 32);
            this.label8.TabIndex = 15;
            this.label8.Text = "Rotacion";
            // 
            // transAngulo
            // 
            this.transAngulo.Location = new System.Drawing.Point(59, 262);
            this.transAngulo.Name = "transAngulo";
            this.transAngulo.Size = new System.Drawing.Size(100, 38);
            this.transAngulo.TabIndex = 16;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BackColor = System.Drawing.Color.Transparent;
            this.label9.Location = new System.Drawing.Point(12, 262);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(39, 32);
            this.label9.TabIndex = 17;
            this.label9.Text = "θ:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.BackColor = System.Drawing.Color.Transparent;
            this.label10.Location = new System.Drawing.Point(12, 313);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(135, 32);
            this.label10.TabIndex = 18;
            this.label10.Text = "Reflexion";
            // 
            // transReflexionX
            // 
            this.transReflexionX.AutoSize = true;
            this.transReflexionX.BackColor = System.Drawing.Color.Transparent;
            this.transReflexionX.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.transReflexionX.Location = new System.Drawing.Point(18, 348);
            this.transReflexionX.Name = "transReflexionX";
            this.transReflexionX.Size = new System.Drawing.Size(80, 36);
            this.transReflexionX.TabIndex = 19;
            this.transReflexionX.Text = "X:";
            this.transReflexionX.UseVisualStyleBackColor = false;
            this.transReflexionX.CheckedChanged += new System.EventHandler(this.transReflexionX_CheckedChanged);
            // 
            // transReflexionY
            // 
            this.transReflexionY.AutoSize = true;
            this.transReflexionY.BackColor = System.Drawing.Color.Transparent;
            this.transReflexionY.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.transReflexionY.Location = new System.Drawing.Point(127, 348);
            this.transReflexionY.Name = "transReflexionY";
            this.transReflexionY.Size = new System.Drawing.Size(80, 36);
            this.transReflexionY.TabIndex = 20;
            this.transReflexionY.Text = "Y:";
            this.transReflexionY.UseVisualStyleBackColor = false;
            this.transReflexionY.CheckedChanged += new System.EventHandler(this.transReflexionY_CheckedChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(341, 91);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(132, 45);
            this.button1.TabIndex = 21;
            this.button1.Text = "Aplicar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(341, 176);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(132, 45);
            this.button2.TabIndex = 22;
            this.button2.Text = "Aplicar";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(341, 262);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(132, 45);
            this.button3.TabIndex = 23;
            this.button3.Text = "Aplicar";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.BackColor = System.Drawing.Color.Transparent;
            this.checkBox1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.checkBox1.Location = new System.Drawing.Point(24, 401);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(135, 36);
            this.checkBox1.TabIndex = 24;
            this.checkBox1.Text = "Recta:";
            this.checkBox1.UseVisualStyleBackColor = false;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // trackBar1
            // 
            this.trackBar1.LargeChange = 1;
            this.trackBar1.Location = new System.Drawing.Point(24, 461);
            this.trackBar1.Maximum = 359;
            this.trackBar1.Name = "trackBar1";
            this.trackBar1.Size = new System.Drawing.Size(249, 114);
            this.trackBar1.TabIndex = 25;
            this.trackBar1.Scroll += new System.EventHandler(this.trackBar1_Scroll);
            // 
            // ListaPoligonos
            // 
            this.ListaPoligonos.LabelEdit = true;
            this.ListaPoligonos.Location = new System.Drawing.Point(24, 534);
            this.ListaPoligonos.Name = "ListaPoligonos";
            this.ListaPoligonos.Size = new System.Drawing.Size(417, 327);
            this.ListaPoligonos.TabIndex = 27;
            this.ListaPoligonos.UseCompatibleStateImageBehavior = false;
            this.ListaPoligonos.View = System.Windows.Forms.View.List;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(246, 867);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(195, 47);
            this.button4.TabIndex = 28;
            this.button4.Text = "Seleccionar";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // CG
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(1309, 1145);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.ListaPoligonos);
            this.Controls.Add(this.trackBar1);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.transReflexionY);
            this.Controls.Add(this.transReflexionX);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.transAngulo);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.transEscalaY);
            this.Controls.Add(this.transEscalaX);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.transTraslacionY);
            this.Controls.Add(this.transTraslacionX);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.CerrarPoligono);
            this.Controls.Add(this.menuStrip1);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "CG";
            this.Load += new System.EventHandler(this.CG_Load);
            this.Paint += new System.Windows.Forms.PaintEventHandler(this.CG_Paint);
            this.MouseClick += new System.Windows.Forms.MouseEventHandler(this.CG_MouseClick);
            this.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.CG_MouseDoubleClick);
            this.Resize += new System.EventHandler(this.CG_Resize);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trackBar1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox CerrarPoligono;
        private System.Windows.Forms.ToolStripMenuItem objetosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem crearToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem guardarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cargarToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox transTraslacionX;
        private System.Windows.Forms.TextBox transTraslacionY;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox transEscalaY;
        private System.Windows.Forms.TextBox transEscalaX;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox transAngulo;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.CheckBox transReflexionX;
        private System.Windows.Forms.CheckBox transReflexionY;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.TrackBar trackBar1;
        private System.Windows.Forms.ListView ListaPoligonos;
        private System.Windows.Forms.Button button4;
    }
}

