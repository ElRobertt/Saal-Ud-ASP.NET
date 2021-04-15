<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaGeneralNutriologo.aspx.cs" Inherits="Saal_ud.ConsultaGeneralNutriologo" %>

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
    <nav>
        
    </nav>
    <section class="tables">
    <form id="form1" runat="server">
        <h1>CONSULTAS GENERALES DE NUTRIOLOGOS</h1>
        <asp:GridView CssClass="dp" ID="gdNutriologo" runat="server" AutoGenerateColumns="false" DataKeyNames="IdNutriologo" DataSourceID="sqlNutriologo">
                <Columns>
                    <asp:BoundField DataField="IdNutriologo" HeaderText="Clave Nutriologo" InsertVisible="false" ReadOnly="true" SortExpression="IdNutriologo" />
                    <asp:BoundField DataField="AreasAsignadas" HeaderText="Area asignada " SortExpression="Area Asignada" />
                    <asp:BoundField DataField="Sueldo" HeaderText="Sueldo " SortExpression="Sueldo" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad " SortExpression="Edad" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Pago" HeaderText="Pago" SortExpression="Pago" />
                </Columns>
            </asp:GridView>
    </form>
         <asp:SqlDataSource ID="sqlNutriologo" runat="server"
        ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
        SelectCommand="Select * from Nutriologo">
    </asp:SqlDataSource>
    </section>
         </header>
</body>
</html>
