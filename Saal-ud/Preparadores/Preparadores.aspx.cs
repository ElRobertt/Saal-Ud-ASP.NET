using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Saal_ud
{
    public partial class Preparadores : System.Web.UI.Page
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

                string Area;
                int Sueldo, Edad;
                char Sexo,Pago;
               

                Area = tbAreap.Text;
                Sueldo =int.Parse(tbSueldop.Text);
                Edad = int.Parse(tbEdadp.Text);
                Sexo = char.Parse(rbtSexoP.Text);
                Pago = char.Parse(rbtPagosP.Text);
                


                SQLInsert = string.Format("Insert into Preparadores(AreaAsignada, Sueldo, Edad, Sexo, Pago)" +
                 "Values('{0}','{1}','{2}','{3}','{4}')", Area, Sueldo, Edad, Sexo, Pago);

                SQLCmd.CommandText = SQLInsert;
                SQLCmd.ExecuteNonQuery();
                String script = "alert('Persona ingresado Correctamente')";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                tbAreap.Text = " ";
                tbEdadp.Text = " ";
                tbSueldop.Text = " ";
                


            }
        }

       
    }
}