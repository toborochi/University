namespace Pintadorsango
{
    partial class Pintadorsango
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Pintadorsango));
            this.AreaTrabajo = new System.Windows.Forms.PictureBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.fasdToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dasdaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.AreaTrabajo)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // AreaTrabajo
            // 
            this.AreaTrabajo.BackColor = System.Drawing.Color.White;
            this.AreaTrabajo.Cursor = System.Windows.Forms.Cursors.Cross;
            this.AreaTrabajo.Location = new System.Drawing.Point(18, 12);
            this.AreaTrabajo.Name = "AreaTrabajo";
            this.AreaTrabajo.Size = new System.Drawing.Size(1077, 670);
            this.AreaTrabajo.TabIndex = 0;
            this.AreaTrabajo.TabStop = false;
            this.AreaTrabajo.MouseClick += new System.Windows.Forms.MouseEventHandler(this.AreaTrabajo_MouseClick);
            this.AreaTrabajo.MouseDown += new System.Windows.Forms.MouseEventHandler(this.AreaTrabajo_MouseDown);
            this.AreaTrabajo.MouseMove += new System.Windows.Forms.MouseEventHandler(this.AreaTrabajo_MouseMove);
            this.AreaTrabajo.MouseUp += new System.Windows.Forms.MouseEventHandler(this.AreaTrabajo_MouseUp);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(356, 688);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(399, 59);
            this.button1.TabIndex = 1;
            this.button1.Text = "Crear Objeto";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(761, 688);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 32);
            this.label1.TabIndex = 2;
            this.label1.Text = "label1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 606);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 32);
            this.label2.TabIndex = 3;
            this.label2.Text = "label2";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 650);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(93, 32);
            this.label3.TabIndex = 4;
            this.label3.Text = "label3";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(18, 711);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(194, 36);
            this.checkBox1.TabIndex = 5;
            this.checkBox1.Text = "Usar Editor";
            this.checkBox1.UseVisualStyleBackColor = true;
            this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(40, 40);
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fasdToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(152, 50);
            // 
            // fasdToolStripMenuItem
            // 
            this.fasdToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dasdaToolStripMenuItem});
            this.fasdToolStripMenuItem.Name = "fasdToolStripMenuItem";
            this.fasdToolStripMenuItem.Size = new System.Drawing.Size(151, 46);
            this.fasdToolStripMenuItem.Text = "fasd";
            // 
            // dasdaToolStripMenuItem
            // 
            this.dasdaToolStripMenuItem.Name = "dasdaToolStripMenuItem";
            this.dasdaToolStripMenuItem.Size = new System.Drawing.Size(211, 46);
            this.dasdaToolStripMenuItem.Text = "dasda";
            // 
            // Pintadorsango
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(16F, 31F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1338, 1048);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.AreaTrabajo);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Pintadorsango";
            this.Text = "Pintadorsango";
            this.Load += new System.EventHandler(this.Pintadorsango_Load);
            ((System.ComponentModel.ISupportInitialize)(this.AreaTrabajo)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox AreaTrabajo;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fasdToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem dasdaToolStripMenuItem;
    }
}

