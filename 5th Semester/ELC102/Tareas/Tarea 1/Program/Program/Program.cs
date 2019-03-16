using OpenTK;
using Program.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Program
{

    class Program : Form
    {
        private Button button1;
        private Label label1;
        Entorno Entorno = new Entorno();

        public Program()
        {
            InitializeComponent();
        }

        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Program());
            
        }

        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(508, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(345, 56);
            this.button1.TabIndex = 0;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(740, 111);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 32);
            this.label1.TabIndex = 1;
            this.label1.Text = "label1";
            // 
            // Program
            // 
            this.BackColor = System.Drawing.Color.DimGray;
            this.ClientSize = new System.Drawing.Size(865, 603);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Name = "Program";
            this.Text = "Ventana OpenGL";
            this.Load += new System.EventHandler(this.Program_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void Program_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            /*
            Poligono P = new Poligono();
            P.Vertices.Add(new Punto(1, 2, 8));
            P.Vertices.Add(new Punto(1, 2, 3));
            Objeto x = new Objeto();
            x.Poligonos.Add(P);
            Entorno.AddObjeto(x);
            P.Vertices.Add(new Punto(1, 77, 3));
            x.Poligonos.Add(P);
            Entorno.AddObjeto(x);
            Entorno.GuardarDatos();*/
            Entorno.CargarDatos();

            int x = (int)Entorno.Entidades[0].Poligonos[0].Vertices[0].z;
            label1.Text = x.ToString();

        }

    }

    
}
