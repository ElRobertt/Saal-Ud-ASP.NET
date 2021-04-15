using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Saal_ud
{
    public partial class altaLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btGuardar_Click1(object sender, ImageClickEventArgs e)
        {
            string SQLInsert;
            SqlConnection SQLCon = new SqlConnection("Data Source=DESKTOP-4QEL7SA; Initial Catalog=SalUd; Integrated Security=True");
            SqlCommand SQLCmd = new SqlCommand();

            using (SQLCon)
            {
                SQLCon.Open();
                SQLCmd.Connection = SQLCon;

                string User, pass;


                User = tbLogin.Text;
                pass = tbPasword.Text;


                SQLInsert = string.Format("Insert into loginn(Usuario, Pasword)" +
                 "Values('{0}','{1}')", User,pass);

                SQLCmd.CommandText = SQLInsert;
                SQLCmd.ExecuteNonQuery();
                String script = "alert('Persona ingresado Correctamente')";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                tbLogin.Text = "";
                tbPasword.Text = "";
                tbConfiPass.Text = "";
            }
        }

        protected void tbLogin_TextChanged(object sender, EventArgs e)
        {

        }
    }
}