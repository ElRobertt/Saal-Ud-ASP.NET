<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nutriologos.aspx.cs" Inherits="Saal_ud.Nutriologos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Registro Nutriologos</title>
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
       <nav class="menu">
           <div id="div_nav">
                <ul>
            <li> <a href="../MenuSec.aspx">Menú Principal</a></li>
            <li><a href="ConsultaGeneralNutriologo.aspx">Consulta General</a></li>
            <li><a href="ConsultaGeneralAtributo.aspx">Consulta General Por Clave</a></li>
            <li><a href="Baja_Nutriologo.aspx">Baja Nutriologo</a></li>
              </ul>
           </div>
         <section class="tables">
          <form id="form1" runat="server">
              <table>
                  <tr>
                      <td>
                          <asp:Label ID="lbArea" runat="server" Text="Area asignada :"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbArea" runat="server" CssClass="textbox" ></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVArea" runat="server" ControlToValidate="tbArea" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="REVArea" runat="server" ControlToValidate="tbArea" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbSueldo" runat="server" Text="Sueldo: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbSueldo" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RegularExpressionValidator ID="REVSueldo" runat="server" ControlToValidate="tbSueldo" ValidationExpression="\d*" ErrorMessage="Debes ingresar un numero correcto" Text="Debes ingresar un numero correcto"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RFVSueldo" runat="server" ControlToValidate="tbSueldo" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                      <td>
                          <asp:Label ID="lbEdad" runat="server" Text="Edad: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbEdad" runat="server" CssClass="textbox" ></asp:TextBox>
                      </td>
                      <td>
                          <asp:RegularExpressionValidator ID="REVEdad" runat="server" ControlToValidate="tbEdad" ValidationExpression="^[\d]*$" ErrorMessage="Debes ingresar un numero correcto" Text="Debes ingresar un numero correcto"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RFVEdad" runat="server" ControlToValidate="tbEdad" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbSexo" runat="server" Text="Sexo: "></asp:Label>
                      </td>
                      <td>
                             <asp:RadioButtonList ID="Sexo" runat="server">
                             <asp:ListItem Value="M">Masculino</asp:ListItem>
                             <asp:ListItem Value="F">Femenino</asp:ListItem>
                             </asp:RadioButtonList>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVSexo" runat="server" ControlToValidate="Sexo" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>                      </td>
                      <td>
                          <asp:Label ID="lbPagos" runat="server" Text="Pagos: "></asp:Label>
                      </td>
                      <td>
                             <asp:RadioButtonList ID="Pagos" runat="server">
                             <asp:ListItem Value="S">Semanalmente</asp:ListItem>
                             <asp:ListItem Value="Q">Quincena</asp:ListItem>
                             <asp:ListItem Value="M">Mensualmente</asp:ListItem>
                             </asp:RadioButtonList>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVPagos" runat="server" ControlToValidate="Pagos" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
              </table>
               <table style="width: 570px">
                 <tr>
                     <td>
                         <asp:ImageButton ID="btGuardar" runat="server" ImageUrl="~/Imagenes/Guardar.png" ImageAlign="Right" OnClick="btGuardar_Click" style="height: 32px"/>
                     </td>
                 </tr> 
             </table>
           </form>
    </section>
     <asp:SqlDataSource ID="sqlNutriologo" runat="server"
        ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
        SelectCommand="Select IdNutriologo, Nombre from Nutriologo">
    </asp:SqlDataSource>
    </nav>
    </header>
   
   
</body>
</html>
