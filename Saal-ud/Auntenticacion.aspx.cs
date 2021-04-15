using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Saal_ud
{
    public partial class Auntenticacion : System.Web.UI.Page
    {
        public static string Usuarios;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void tbNombre_Click(object sender, EventArgs e)
        {
            tbNombre.Text = "";
        }

        protected void btInicio_Click(object sender, EventArgs e)
        {
            if (tbNombre.Text==" " && tbPassword.Text!=" ")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('Ingrese el usuario');", true);
            }
            else
            {
                if (tbPassword.Text == "" && tbNombre.Text!="")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('Ingrese la contraseña');", true);
                }
                else
                {
                    if (tbNombre.Text != "" && tbPassword.Text != "")
                    {
                        String user, pass;
                        user = tbNombre.Text;
                        pass = tbPassword.Text;
                        //Objeto para el acceso para el data set bd()
                        SalUdTableAdapters.loginnTableAdapter tbloguin = new SalUdTableAdapters.loginnTableAdapter();
                        //Objeto para el accseo ala tabla de usuarios
                        SalUd.loginnDataTable dtlogin = tbloguin.GetData(user, pass);
                        int cantRecord = dtlogin.Count;
                        if (cantRecord <= 0)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('Usuario y/o Contraseña Inconrrecta');", true);
                        }
                        {

                            //Asignar una variable globar para determinar logeado
                            Usuarios = dtlogin[0].Usuario;
                            Response.Redirect("MenuSec.aspx");
                        }

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "javascript:alert('No puedes dejar usuario y/o contraseña vacia');", true);
                    }
                }
            }
        }

        protected void tbNombre_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void tbPassword_TextChanged(object sender, EventArgs e)
        {
           
            
        }
    }
}