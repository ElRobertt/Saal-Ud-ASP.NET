using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Saal_ud
{
    public partial class Nutriologos : System.Web.UI.Page
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

                string LicArea;
                int LicEdad;
                char LicSexo, LicPagos;
                float LicSueldo;

                LicArea = tbArea.Text;
                LicEdad = int.Parse(tbEdad.Text);
                LicPagos = char.Parse(Pagos.Text);
                LicSexo = char.Parse(Sexo.Text);
                LicSueldo = float.Parse(tbSueldo.Text);

                SQLInsert = string.Format("Insert into Nutriologo(AreasAsignadas, Sueldo, Edad, Sexo, Pago)" +
                 "Values('{0}','{1}','{2}','{3}','{4}')", LicArea, LicSueldo, LicEdad, LicSexo, LicPagos);

                SQLCmd.CommandText = SQLInsert;
                SQLCmd.ExecuteNonQuery();
                String script = "alert('Persona ingresado Correctamente')";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                tbArea.Text = "";
                tbEdad.Text = "";
                Pagos.Text = "";
                Sexo.Text = "";
                tbSueldo.Text = "";
            }
        }

        protected void tbArea_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbEdad_TextChanged(object sender, EventArgs e)
        {

        }
    }
}