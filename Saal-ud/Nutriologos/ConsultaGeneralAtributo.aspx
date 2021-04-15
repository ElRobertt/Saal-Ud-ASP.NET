<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaGeneralAtributo.aspx.cs" Inherits="Saal_ud.ConsultaGeneralAtributo" %>

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
         <nav>
  <%--     <ul>
           <li><a href="Nutriologos.aspx">Nutriologo</a></li>
       </ul>--%>
    </nav>
        <nav class="menu">
           <div id="div_nav">
                <ul>
            <li> <a href="../MenuSec.aspx">Menú Principal</a></li>
            <li><a href="ConsultaGeneralNutriologo.aspx">Consulta General</a></li>
            <li><a href="ConsultaGeneralAtributo.aspx">Consulta General Por Clave</a></li>
            <li><a href="Baja_Nutriologo.aspx">Baja Nutriologo</a></li>
            <li><a href="Nutriologos.aspx">Regresar</a></li>
              </ul>
           </div>
            </nav>
    <section class="tables">
        <form id="form1" runat="server">
            <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label CssClass="label" ID="lbNombre" runat="server" Text="Clave Nutriologo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="tbNombre" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RFVNombre" runat="server" ControlToValidate="tbNombre" Text="Campo Obligatorio" ErrorMessage="Campo obligatorio"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVNombre" runat="server" ControlToValidate="tbNombre" Text="Formato Incorrecto" ValidationExpression="^[\d]*$" ErrorMessage="Formato Incorrecto"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1">
                    <asp:Button CssClass="butons" ID="btBuscar" runat="server" Text="Buscar" OnClick="btBuscar_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="gbNutriologo" runat="server" DataKeyNames="IdNutriologo" DataSourceID="sqlNutriologo">
             <Columns>
                     <asp:BoundField DataField="IdNutriologo" HeaderText="Clave Nutriologo" InsertVisible="false" ReadOnly="true" SortExpression="IdNutriologo" />
                    <asp:BoundField DataField="AreasAsignadas" HeaderText="Area asignada " SortExpression="Area Asignada" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo " SortExpression="Sueldo" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad " SortExpression="Edad" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Pago" HeaderText="Pago" SortExpression="Pago" />
                </Columns>
        </asp:GridView>   
        <asp:SqlDataSource ID="sqlNutriologo" runat="server"
            ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
            SelectCommand="Select * from Nutriologo where IdNutriologo=@IdNutriologo">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbNombre" Name="IdNutriologo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        </form>
        
    </section>
    </header>
   
</body>
</html>
