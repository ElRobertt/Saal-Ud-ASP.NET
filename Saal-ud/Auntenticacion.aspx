<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auntenticacion.aspx.cs" Inherits="Saal_ud.Auntenticacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="estilos/Aunte.css"/>
<link rel="icon" href="imagenes/icono.ico"/>
    <title>Login</title>
      <style>
        header {
            background-image: url("Imagenes/38730192.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            height: 600px;
            
        }
    </style>
</head>
  
<body>

    <nav class="div_aun">
    <header>
       <form id="form1" runat="server">
       <div class="div_aun">
           
        <table class="tablep" >
            <tr> <asp:Label ID="datos" runat="server" Text="Ingresa tus Datos"></asp:Label> </tr>
            <tr>
                <td>
                    <img class="img_header3" src="imagenes/user1.png" />
                    <asp:TextBox ID="tbNombre" runat="server"  CssClass="txb" text="Usuario" OnTextChanged="tbNombre_TextChanged"  ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RFVNombre" runat="server" ControlToValidate="tbNombre" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr> 
            <tr>
                <td>
                    <img class="img_header3" src="imagenes/password1600.png" />
                    <asp:TextBox  ID="tbPassword" runat="server"  CssClass="txb" Text="Contraseña" TextMode="Password" OnTextChanged="tbPassword_TextChanged" > </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ControlToValidate="tbPassword" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btInicio" runat="server" Text="Iniciar Sesion" OnClick="btInicio_Click" CssClass="btn" />
                </td>
            </tr>
        </table>
        </div>
   </form>
    </header>
    </nav>
   
</body>
</html>
