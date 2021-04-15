using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Saal_ud
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGuardar_Click(object sender, ImageClickEventArgs e)
        {
            string SQLInsert;
            SqlConnection SQLCon = new SqlConnection("Data Source=DESKTOP-4QEL7SA; Initial Catalog=SalUd; Integrated Security=True");
            SqlCommand SQLCmd = new SqlCommand();

            using (SQLCon)
            {
                SQLCon.Open();
                SQLCmd.Connection = SQLCon;

                string Nombre,Paterno,Materno;
                int Peso,Edad;
                char Sexo, Paquete;
                float Estatura;

                Nombre = tbNombre.Text;
                Paterno = tbPaterno.Text;
                Materno = tbMaterno.Text;
                Peso = int.Parse(tbPeso.Text);
                Edad = int.Parse(tbEdadU.Text);
                Estatura = float.Parse(tbEstatura.Text);
                Sexo = char.Parse(rbtSexo.Text);
                Paquete = char.Parse(rbtPagos.Text);


                SQLInsert = string.Format("Insert into Usuario(Nombre, Apaterno, Amaterno, Peso, Edad,Estatura,Sexo,Paquete)" +
                 "Values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", Nombre, Paterno, Materno, Peso, Edad,Estatura,Sexo,Paquete);

                SQLCmd.CommandText = SQLInsert;
                SQLCmd.ExecuteNonQuery();
                String script = "alert('Persona ingresado Correctamente')";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                tbNombre.Text = " ";
                tbPaterno.Text = " ";
                tbMaterno.Text = " ";
                tbPeso.Text = " ";
                tbEdadU.Text = " ";
                tbEstatura.Text = " ";
                

            }
        }

        protected void tbEstatura_TextChanged(object sender, EventArgs e)
        {

        }
    }
}