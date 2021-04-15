<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaGeneralAtributoPreparador.aspx.cs" Inherits="Saal_ud.ConsultaGeneralAtributoPreparador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Consulta Especial</title>
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

       <%-- <h1>PRERADOR</h1>--%>
         <h1 class="titulos_header">Saal-ud</h1>
        <h3 class="titulos_header2">LA TECNOLOGIA EN TU BIENESTAR</h3>
      <nav class="menu">
         <div id="div_nav">
        <ul>
            <li> <a href="../MenuSec.aspx">Menú Principal</a></li>
            <li><a href="ConsultaGeneralAtributoPreparador.aspx">CONSULTA GENERAL POR ATRIBUTO PREPARADOR</a></li>
            <li><a href="ConsultaGeneralPreparadores.aspx">CONSULTA GENERAL PREPARADOR</a></li>
            <li><a href="Baja_preparadores.aspx">BAJA PREPARADORES</a></li>
            <li><a href="Preparadores.aspx">Regresar</a></li>
        </ul>
             </div>
    </nav>
         <nav>
       <ul>
           <h1 class="titulos_header2">CONSULTA GENERAL POR ATRIBUTO REPARTIDOR</h1>
       </ul>
    </nav>
    <section class="tables">
        <form id="form1" runat="server">
            <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label CssClass="label" ID="lbNombre" runat="server" Text="CLAVE REPARTIDOR"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox" ID="tbNombre" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="REVNombre" runat="server" ControlToValidate="tbNombre" ValidationExpression="\d*" ErrorMessage="Debes ingresar un numero correcto" Text="Debes ingresar un numero correcto"></asp:RegularExpressionValidator>
                          <asp:RequiredFieldValidator ID="RFVNombre" runat="server" ControlToValidate="tbNombre" Text="Campo Obligatorio" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1">
                    <asp:Button CssClass="butons" ID="btBuscar" runat="server" Text="Buscar" OnClick="btBuscar_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="gbPreparador" runat="server" DataKeyNames="IdPreparador" DataSourceID="sqlPreparador">
             <Columns>
                     <asp:BoundField DataField="IdPreparador" HeaderText="Clave Preparador" InsertVisible="false" ReadOnly="true" SortExpression="IdPreparador" />
                    <asp:BoundField DataField="AreaAsignada" HeaderText="Area Asignada " SortExpression="AreaAsignada" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo " SortExpression="Sueldo" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad " SortExpression="Edad" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Pago" HeaderText="Pago" SortExpression="Pago" />
                </Columns>
        </asp:GridView>   
        <asp:SqlDataSource ID="sqlPreparador" runat="server"
            ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
            SelectCommand="Select * from Preparadores where IdPreparador=@IdPreparador">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbNombre" Name="IdPreparador" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        </form>
        
    </section>
     </header>
    
</body>
</html>
