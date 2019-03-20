namespace Paintsango
{
    partial class VentanaPrincipal
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(VentanaPrincipal));
            this.AreaTrabajo = new System.Windows.Forms.PictureBox();
            this.CajaTexto = new System.Windows.Forms.Label();
            this.PosicionX = new System.Windows.Forms.Label();
            this.PosicionY = new System.Windows.Forms.Label();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.inicioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.inicioToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.crearObjetoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.guardarObjetoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cargarObjetoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CerrarPoligono = new System.Windows.Forms.CheckBox();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.AreaTrabajo)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // AreaTrabajo
            // 
            this.AreaTrabajo.BackColor = System.Drawing.Color.Linen;
            this.AreaTrabajo.Cursor = System.Windows.Forms.Cursors.Cross;
            this.AreaTrabajo.Enabled = false;
            this.AreaTrabajo.Location = new System.Drawing.Point(12, 106);
            this.AreaTrabajo.Name = "AreaTrabajo";
            this.AreaTrabajo.Size = new System.Drawing.Size(968, 517);
            this.AreaTrabajo.TabIndex = 0;
            this.AreaTrabajo.TabStop = false;
            this.AreaTrabajo.Paint += new System.Windows.Forms.PaintEventHandler(this.AreaTrabajo_Paint);
            this.AreaTrabajo.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pictureBox1_MouseClick);
            this.AreaTrabajo.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.pictureBox1_MouseDoubleClick);
            this.AreaTrabajo.MouseMove += new System.Windows.Forms.MouseEventHandler(this.AreaTrabajo_MouseMove);
            // 
            // CajaTexto
            // 
            this.CajaTexto.AutoSize = true;
            this.CajaTexto.Location = new System.Drawing.Point(12, 638);
            this.CajaTexto.Name = "CajaTexto";
            this.CajaTexto.Size = new System.Drawing.Size(145, 32);
            this.CajaTexto.TabIndex = 1;
            this.CajaTexto.Text = "CajaTexto";
            // 
            // PosicionX
            // 
            this.PosicionX.AutoSize = true;
            this.PosicionX.Location = new System.Drawing.Point(798, 626);
            this.PosicionX.Name = "PosicionX";
            this.PosicionX.Size = new System.Drawing.Size(60, 32);
            this.PosicionX.TabIndex = 3;
            this.PosicionX.Text = "x: 0";
            // 
            // PosicionY
            // 
            this.PosicionY.AutoSize = true;
            this.PosicionY.Location = new System.Drawing.Point(887, 626);
            this.PosicionY.Name = "PosicionY";
            this.PosicionY.Size = new System.Drawing.Size(60, 32);
            this.PosicionY.TabIndex = 4;
            this.PosicionY.Text = "y: 0";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(40, 40);
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inicioToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(168, 50);
            // 
            // inicioToolStripMenuItem
            // 
            this.inicioToolStripMenuItem.Name = "inicioToolStripMenuItem";
            this.inicioToolStripMenuItem.Size = new System.Drawing.Size(167, 46);
            this.inicioToolStripMenuItem.Text = "Inicio";
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(40, 40);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inicioToolStripMenuItem1});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(992, 49);
            this.menuStrip1.TabIndex = 6;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // inicioToolStripMenuItem1
            // 
            this.inicioToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.crearObjetoToolStripMenuItem,
            this.guardarObjetoToolStripMenuItem,
            this.cargarObjetoToolStripMenuItem});
            this.inicioToolStripMenuItem1.Name = "inicioToolStripMenuItem1";
            this.inicioToolStripMenuItem1.Size = new System.Drawing.Size(101, 45);
            this.inicioToolStripMenuItem1.Text = "Inicio";
            // 
            // crearObjetoToolStripMenuItem
            // 
            this.crearObjetoToolStripMenuItem.Name = "crearObjetoToolStripMenuItem";
            this.crearObjetoToolStripMenuItem.Size = new System.Drawing.Size(396, 46);
            this.crearObjetoToolStripMenuItem.Text = "Crear Objeto";
            this.crearObjetoToolStripMenuItem.Click += new System.EventHandler(this.crearObjetoToolStripMenuItem_Click);
            // 
            // guardarObjetoToolStripMenuItem
            // 
            this.guardarObjetoToolStripMenuItem.Name = "guardarObjetoToolStripMenuItem";
            this.guardarObjetoToolStripMenuItem.Size = new System.Drawing.Size(396, 46);
            this.guardarObjetoToolStripMenuItem.Text = "Guardar Objeto";
            this.guardarObjetoToolStripMenuItem.Click += new System.EventHandler(this.guardarObjetoToolStripMenuItem_Click);
            // 
            // cargarObjetoToolStripMenuItem
            // 
            this.cargarObjetoToolStripMenuItem.Name = "cargarObjetoToolStripMenuItem";
            this.cargarObjetoToolStripMenuItem.Size = new System.Drawing.Size(396, 46);
            this.cargarObjetoToolStripMenuItem.Text = "Cargar Objeto";
            this.cargarObjetoToolStripMenuItem.Click += new System.EventHandler(this.cargarObjetoToolStripMenuItem_Click);
            // 
            // CerrarPoligono
            // 
            this.CerrarPoligono.AutoSize = true;
            this.CerrarPoligono.Location = new System.Drawing.Point(737, 64);
            this.CerrarPoligono.Name = "CerrarPoligono";
            this.CerrarPoligono.Size = new System.Drawing.Size(243, 36);
            this.CerrarPoligono.TabIndex = 7;
            this.CerrarPoligono.Text = "Cerra Poligono";
            this.CerrarPoligono.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(179, 638);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 32);
            this.label1.TabIndex = 2;
            this.label1.Text = "label1";
            // 
            // VentanaPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(992, 680);
            this.Controls.Add(this.CerrarPoligono);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.PosicionY);
            this.Controls.Add(this.PosicionX);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.CajaTexto);
            this.Controls.Add(this.AreaTrabajo);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "VentanaPrincipal";
            this.Text = "Sandia";
            this.Load += new System.EventHandler(this.VentanaPrincipal_Load);
            ((System.ComponentModel.ISupportInitialize)(this.AreaTrabajo)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox AreaTrabajo;
        private System.Windows.Forms.Label CajaTexto;
        private System.Windows.Forms.Label PosicionX;
        private System.Windows.Forms.Label PosicionY;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem inicioToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem inicioToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem crearObjetoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem guardarObjetoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cargarObjetoToolStripMenuItem;
        private System.Windows.Forms.CheckBox CerrarPoligono;
        private System.Windows.Forms.Label label1;
    }
}

