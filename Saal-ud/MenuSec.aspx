<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuSec.aspx.cs" Inherits="Saal_ud.MenuSec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <link rel="stylesheet" type="text/css" href="estilos/MenuSec.css"/>
    <link rel="stylesheet" type="text/css" href="Estilos/index.css"/>
     <style>
        header {
            background-image: url("imagenes/679.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            height: 600px;
        }
        table{
            align-content:center;
        }
    </style>
</head>
<body>
    <header>
        <a href="index.html"><img src="imagenes/Boton_Salir.png" /></a>
        <div >
            <h1 class="titulos_header">Saal-ud</h1>
            <h3 class="titulos_header2">LA TECNOLOGIA EN TU BIENESTAR</h3>
        </div>
           <div id="div_nav">
                <nav class="menu">

                    <ul>
                        <li><a href="Usuarios/Usuarios.aspx">Clientes</a></li>
                        <li><a href="Nutriologos/Nutriologos.aspx">Nutriologos</a></li>
                        <li><a href="Preparadores/Preparadores.aspx">Preparadores</a></li>
                        <li><a href="Login/altaLogin.aspx">AltaLogin</a></li>
                    </ul>

                </nav>
            </div>
    <%--<section class="divs">
        <form id="form1" runat="server">
            <table>
         <tr>
             <td>
                 
                 <asp:ImageButton ID="ibCliente" runat="server" AlternateText="Clientes" ImageUrl="~/Imagenes/cliente.png" PostBackUrl="~/Usuarios/Usuarios.aspx" ToolTip="Clientes" CssClass="img_2" />
               
             </td>
             <td>
                 <asp:ImageButton ID="ibNutriologo" runat="server" ImageUrl="~/Imagenes/Nutri.png" PostBackUrl="~/Nutriologos/Nutriologos.aspx"  ToolTip="Nutriologos" CssClass="img_2" />
             </td>
             <td>
                 <asp:ImageButton ID="ibPreparadores" runat="server" ImageUrl="~/Imagenes/prep.png" PostBackUrl="~/Preparadores/Preparadores.aspx"  ToolTip="Preparadores" CssClass="img_2" />
             </td>
             <td>
                 <asp:ImageButton ID="ibLog" runat="server" ImageUrl="~/Imagenes/Log.png" PostBackUrl="~/Login/altaLogin.aspx"  ToolTip="Usuarios Del login" CssClass="img_2" />
             </td>
         </tr>
     </table>
        </form>
    </section>--%>
    </header>
    
        
  
</body>
</html>
