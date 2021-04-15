<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaGeneralPreparadores.aspx.cs" Inherits="Saal_ud.ConsultaGeneralPreparadores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consulta General</title>
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
            <li><a href="Preparadores.aspx">Regresar</a></li>
        </ul>
             </div>
    </nav>
        <section class="tables">
    <form id="form1" runat="server">
        <h1 class="titulos_header2">CONSULTA GENERAL DE PREPARADOR</h1>
        <asp:GridView CssClass="dp" ID="gdPreparador" runat="server" AutoGenerateColumns="false" DataKeyNames="IdPreparador" DataSourceID="sqlPreparador">
                <Columns>
                    <asp:BoundField DataField="IdPreparador" HeaderText="Clave Preparador" InsertVisible="false" ReadOnly="true" SortExpression="IdPreparador" />
                    <asp:BoundField DataField="AreaAsignada" HeaderText="Area Asignada " SortExpression="AreaAsignada" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo " SortExpression="Sueldo" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad " SortExpression="Edad" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Pago" HeaderText="Pago" SortExpression="Pago" />
                </Columns>
            </asp:GridView>
    </form>
         <asp:SqlDataSource ID="sqlPreparador" runat="server"
        ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
        SelectCommand="Select * from Preparadores">
    </asp:SqlDataSource>
    </section>
    </header>
   <%--  <nav>
        <ul>
            <li><a href="Preparadores.aspx">PREPARADOR</a></li>
        </ul>
    </nav>--%>
    
</body>
</html>
