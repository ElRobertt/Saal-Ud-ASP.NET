<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Saal_ud.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Registro Usuarios</title>
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
                    <li><a href="ConsultaGeneralAtributoUsuario.aspx">Consulta Por Nombre</a></li>
                    <li><a href="ConsultaGeneralUsuario.aspx">Consulta General</a></li>
                    <li><a href="Baja_Usuario.aspx">Baja Usuario</a></li>
                </ul>
        </div>
    </nav>
    <section>
          <form id="form1" runat="server" class="forms">
              <table>
                  <tr>
                     
                     
                      <td>
                          <asp:Label ID="lbNombre" runat="server" Text="Nombre :"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbNombre" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RegularExpressionValidator ID="REVNombre" runat="server" ControlToValidate="tbNombre" ValidationExpression="^[a-zA-Z\s]*" Text="No se admiten numeros o simbolos" ErrorMessage="No se admiten numeros o simbolos"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RFVNombre" runat="server" ControlToValidate="tbNombre" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                      <td>
                          <asp:Label ID="lbPaterno" runat="server" Text="Paterno: "></asp:Label> 
                      </td>
                      <td class="auto-style1">
                          <asp:TextBox ID="tbPaterno" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVPaterno" runat="server" ControlToValidate="tbPaterno" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbMaterno" runat="server" Text="Materno: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbMaterno" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVMaterno" runat="server" ControlToValidate="tbMaterno" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                      <td class="auto-style1">
                          <asp:Label ID="lbPeso" runat="server" Text="Peso: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbPeso" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVPeso" runat="server" ControlToValidate="tbPeso" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="REVPeso" runat="server" ControlToValidate="tbpESO" ValidationExpression="\d*" ErrorMessage="Debes ingresar un numero correcto" Text="Debes ingresar un numero correcto"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbEdadU" runat="server" Text="Edad: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbEdadU" runat="server" CssClass="textbox"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVEdadU" runat="server" ControlToValidate="tbEdadU" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                          <asp:RangeValidator ID="RangeEdadU" runat="server" ControlToValidate="tbEdadU" MinimumValue="13" MaximumValue="60" Type="Integer" Text="La edad debe de estar entre 13 y 60" ErrorMessage="La edad debe de estar entre 13 y 60"></asp:RangeValidator>
                      </td>
                      <td class="auto-style1">
                          <asp:Label ID="lbEstatura" runat="server" Text="Estatura: "></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="tbEstatura" runat="server" CssClass="textbox" OnTextChanged="tbEstatura_TextChanged"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVEstatura" runat="server" ControlToValidate="tbEstatura" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="REVEstatura" runat="server" ControlToValidate="tbEstatura" Text="Formato Incorrecto" ErrorMessage="Formato Incorrecto" ValidationExpression="\d+([.]\d{2})*"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lbSexo" runat="server" Text="Sexo: "></asp:Label>
                      </td>
                      <td>
                             <asp:RadioButtonList ID="rbtSexo" runat="server">
                             <asp:ListItem Value="M">Masculino</asp:ListItem>
                             <asp:ListItem Value="F">Femenino</asp:ListItem>
                             </asp:RadioButtonList>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVSexo" runat="server" ControlToValidate="rbtSexo" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                      </td>
                      <td class="auto-style1">
                          <asp:Label ID="lbPaquete" runat="server" Text="Paquete: "></asp:Label>
                      </td>
                      <td>
                             <asp:RadioButtonList ID="rbtPagos" runat="server">
                             <asp:ListItem Value="B">Basico</asp:ListItem>
                             <asp:ListItem Value="S">Semanal</asp:ListItem>
                             <asp:ListItem Value="M">Mensual</asp:ListItem>
                             </asp:RadioButtonList>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RFVPagos" runat="server" ControlToValidate="rbtPagos" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
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
