<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaGeneralUsuario.aspx.cs" Inherits="Saal_ud.ConsultaGeneralUsuario" %>

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
                    <li><a href="ConsultaGeneralAtributoUsuario.aspx">Consulta Por Nombre</a></li>
                    <li style="background-color:firebrick;"><a href="ConsultaGeneralUsuario.aspx">Consulta General</a> </li>
                   <li><a href="Baja_Usuario.aspx">Baja Usuario</a></li>
                    <li><a href="Usuarios.aspx">Regresar</a></li>
                </ul>
        </div>
    </nav>
         <nav>
        <%--<ul>
            <li><a href="Usuarios.aspx">USUARIOS</a></li>
        </ul>--%>
    </nav>
    <section>
    <form id="form1" runat="server" class="tables">
        <h1 class="titulos_header2">CONSULTA GENERALE DE USUARIO</h1><br /><br />
        <asp:GridView CssClass="dp" ID="gdUsuario" runat="server" AutoGenerateColumns="false" DataKeyNames="IdUsuario" DataSourceID="sqlUsuario">
                <Columns>
                    <asp:BoundField DataField="IdUsuario" HeaderText="Clave Usuario" InsertVisible="false" ReadOnly="true" SortExpression="IdUsuario" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre " SortExpression="Nombre" />
                    <asp:BoundField DataField="Apaterno" HeaderText="Apellido Paterno " SortExpression="Apaterno" />
                    <asp:BoundField DataField="Amaterno" HeaderText="Apellido Materno " SortExpression="Amaterno" />
                    <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                    <asp:BoundField DataField="Estatura" HeaderText="Estatura" SortExpression="Estatura" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Paquete" HeaderText="Paquete" SortExpression="Paquete" />
                </Columns>
            </asp:GridView>
    </form>
         <asp:SqlDataSource ID="sqlUsuario" runat="server"
        ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>"
        SelectCommand="Select * from Usuario" OnSelecting="sqlUsuario_Selecting">
    </asp:SqlDataSource>
    </section>
        </header>
   
</body>
</html>
