<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preparadores.aspx.cs" Inherits="Saal_ud.Preparadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Preparadores Fisicos</title>
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
            <li><a href="ConsultaGeneralAtributoPreparador.aspx">CONSULTA GENERAL POR ATRIBUTO PREPARADOR</a></li>
            <li><a href="ConsultaGeneralPreparadores.aspx">CONSULTA GENERAL PREPARADOR</a></li>
            <li><a href="Baja_preparadores.aspx">BAJA PREPARADORES</a></li>
        </ul>
             </div>
    </nav>
        
    <section class="tables">
          <form id="form1" runat="server">
              <table>
                  <tr>
                      <td>
                          <asp:Label ID="lbAreap" runat="server" Text="Area asignada :"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbAreap" runat="server" CssClass="textbox" ></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVAreap" runat="server" ControlToValidate="tbAreap" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbSueldop" runat="server" Text="Sueldo: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbSueldop" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RegularExpressionValidator ID="REVSueldop" runat="server" ControlToValidate="tbSueldop" ValidationExpression="\d*" ErrorMessage="Debes ingresar un numero correcto" Text="Debes ingresar un numero correcto"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RFVSueldop" runat="server" ControlToValidate="tbSueldop" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>

                      </td>
                      <td>
                          <asp:Label ID="lbEdadp" runat="server" Text="Edad: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbEdadp" runat="server" CssClass="textbox" ></asp:TextBox>
                      </td>
                      <td>
                          <asp:RegularExpressionValidator ID="REVEdadp" runat="server" ControlToValidate="tbEdadp" ValidationExpression="\d*" ErrorMessage="Debes ingresar un numero correcto" Text="Debes ingresar un numero correcto"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RFVEdadp" runat="server" ControlToValidate="tbEdadp" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbSexop" runat="server" Text="Sexo: "></asp:Label>
                      </td>
                      <td>
                             <asp:RadioButtonList ID="rbtSexoP" runat="server">
                             <asp:ListItem Value="M">Masculino</asp:ListItem>
                             <asp:ListItem Value="F">Femenino</asp:ListItem>
                             </asp:RadioButtonList>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVSexop" runat="server" ControlToValidate="rbtSexop" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                      <td>
                          <asp:Label ID="lbPagosp" runat="server" Text="Pagos: "></asp:Label>
                      </td>
                      <td>
                             <asp:RadioButtonList ID="rbtPagosP" runat="server">
                             <asp:ListItem Value="S">Semanalmente</asp:ListItem>
                             <asp:ListItem Value="Q">Quincena</asp:ListItem>
                             <asp:ListItem Value="M">Mensualmente</asp:ListItem>
                             </asp:RadioButtonList>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVPAgosP" runat="server" ControlToValidate="rbtPagosP" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
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
    </header>

</body>
</html>
