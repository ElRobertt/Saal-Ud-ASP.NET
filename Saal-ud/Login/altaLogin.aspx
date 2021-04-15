<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaLogin.aspx.cs" Inherits="Saal_ud.altaLogin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" type="text/css" href="../Estilos/General.css"/>
    <style>
        header {
            background-image:url("../Imagenes/820.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            height: 620px;
            
        }
    </style>
</head>
<body>
    <header>
        
        <h1 class="titulos_header">Saal-ud</h1>
        <h3 class="titulos_header2">LA TECNOLOGIA EN TU BIENESTAR</h3>
         <nav>
  <%--     <ul>
           <li><a href="Nutriologos.aspx">Nutriologo</a></li>
       </ul>--%>
    </nav>
        <nav class="menu">
           <div id="div_nav">
                <ul>
            <li> <a href="../MenuSec.aspx">Menú Principal</a></li>
            <li><a> </a></li>
            <li><a href="../Usuarios/Baja_Usuario.aspx">Baja de usuario</a></li>
              </ul>
           </div>
            </nav>
              <nav>
    
    </nav>
    <form id="form1" runat="server" class="tables">
         <table>
             <tr>
                 <td>
                     <asp:Label ID="lbLogin" runat="server" Text="Usuario del Login :"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="tbLogin" runat="server" OnTextChanged="tbLogin_TextChanged" ></asp:TextBox>
                 </td>
                 <td>
                     <asp:RegularExpressionValidator ID="REVLogin" runat="server" ControlToValidate="tbLogin" Text="Solo se permiten letras y numeros" ErrorMessage="Solo se permiten letras y numeros" ValidationExpression="\w+([-+.']\w+)*$"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RFVLogin" runat="server" ControlToValidate="tbLogin" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="lbPass" runat="server" Text="Contraseña del login :"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="tbPasword" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RegularExpressionValidator ID="REVPaswrod" runat="server" ControlToValidate="tbPasword" Text="Solo se permiten numero y letras" ErrorMessage="Solo se permiten numero y letras" ValidationExpression="\w+([-+.']\w+)*$" ></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RFVPasword" runat="server" ControlToValidate="tbPasword" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="lbConfiPass" runat="server" Text="Confirmar Contraseña"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="tbConfiPass" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPasword" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="ComparePass" runat="server" ControlToCompare="tbPasword" ControlToValidate="tbConfiPass" ErrorMessage="Las contraseñas no coinciden">Las contraseñas no coinciden</asp:CompareValidator>
                 </td>
             </tr>
         </table>
        <table style="width: 339px; height: 16px;">
                 <tr>
                     <td>
                         <asp:ImageButton ID="btGuardar" runat="server" ImageUrl="~/Imagenes/Guardar.png" ImageAlign="Right" OnClick="btGuardar_Click1" style="margin-left: 189px;" Height="43px" Width="49px"/>
                     </td>
                 </tr> 
             </table>
    </form>
    <asp:SqlDataSource ID="sqlLogin" runat="server"
        ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
        SelectCommand="SELECT * FROM [loginn]">
    </asp:SqlDataSource>
    </header>
    
</body>
</html>
