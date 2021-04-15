<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja_Usuario.aspx.cs" Inherits="Saal_ud.Baja_Usuario" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" type="text/css" href="../Estilos/index.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/suscripciones.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/index2.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/descargas.css"/>
    <title>Usuarios</title>
    <style>
        header {
            
            background-image:url("../Imagenes/820.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            height: 650px;
        }
    </style>
</head>
<body>
    <header>
    <form id="form1" runat="server">
        <h1 class="titulos_header">Saal-ud</h1>
        <h3 class="titulos_header2">LA TECNOLOGIA EN TU BIENESTAR</h3>
       <nav id="fondorojo">
        <nav id="menu">
            <div>
                <ul>
                    <li><a href="../MenuSec.aspx">Menu Principal </a></li>
                    <li><a href="ConsultaGeneralAtributoUsuario.aspx">Consulta Por Nombre</a></li>
                    <li><a href="ConsultaGeneralUsuario.aspx">Consulta General</a></li>
                    <li><a href="Nutriologos.aspx">Regresar</a></li>
                    <li><a href="../Login/altaLogin.aspx">Regresar</a></li>
                </ul>
            </div>
        </nav>
    </nav>
       
        <section class="sub">

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlUsuarioDev" KeyFieldName="IdUsuario">
                <SettingsCommandButton>
                    <DeleteButton ButtonType="Image" RenderMode="Image">
                        <Image Height="20px" Url="~/Imagenes/delete2.png">
                        </Image>
                    </DeleteButton>
                </SettingsCommandButton>
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" />
                        <CellStyle BackColor="#050311" Border-BorderStyle="None">
                        </CellStyle>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="IdUsuario" ReadOnly="True" VisibleIndex="1" Visible="False">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Apaterno" VisibleIndex="3">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Amaterno" VisibleIndex="4">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Peso" VisibleIndex="5">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Edad" VisibleIndex="6">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Estatura" VisibleIndex="7">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Sexo" VisibleIndex="8">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Paquete" VisibleIndex="9">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>

        </section>
        <footer>

        </footer>
        <asp:SqlDataSource ID="SqlUsuarioDev" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @original_IdUsuario AND [Nombre] = @original_Nombre AND [Apaterno] = @original_Apaterno AND [Amaterno] = @original_Amaterno AND [Peso] = @original_Peso AND [Edad] = @original_Edad AND [Estatura] = @original_Estatura AND [Sexo] = @original_Sexo AND [Paquete] = @original_Paquete" InsertCommand="INSERT INTO [Usuario] ([Nombre], [Apaterno], [Amaterno], [Peso], [Edad], [Estatura], [Sexo], [Paquete]) VALUES (@Nombre, @Apaterno, @Amaterno, @Peso, @Edad, @Estatura, @Sexo, @Paquete)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Nombre] = @Nombre, [Apaterno] = @Apaterno, [Amaterno] = @Amaterno, [Peso] = @Peso, [Edad] = @Edad, [Estatura] = @Estatura, [Sexo] = @Sexo, [Paquete] = @Paquete WHERE [IdUsuario] = @original_IdUsuario AND [Nombre] = @original_Nombre AND [Apaterno] = @original_Apaterno AND [Amaterno] = @original_Amaterno AND [Peso] = @original_Peso AND [Edad] = @original_Edad AND [Estatura] = @original_Estatura AND [Sexo] = @original_Sexo AND [Paquete] = @original_Paquete">
            <DeleteParameters>
                <asp:Parameter Name="original_IdUsuario" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Apaterno" Type="String" />
                <asp:Parameter Name="original_Amaterno" Type="String" />
                <asp:Parameter Name="original_Peso" Type="Int32" />
                <asp:Parameter Name="original_Edad" Type="Int32" />
                <asp:Parameter Name="original_Estatura" Type="Double" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Paquete" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apaterno" Type="String" />
                <asp:Parameter Name="Amaterno" Type="String" />
                <asp:Parameter Name="Peso" Type="Int32" />
                <asp:Parameter Name="Edad" Type="Int32" />
                <asp:Parameter Name="Estatura" Type="Double" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Paquete" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apaterno" Type="String" />
                <asp:Parameter Name="Amaterno" Type="String" />
                <asp:Parameter Name="Peso" Type="Int32" />
                <asp:Parameter Name="Edad" Type="Int32" />
                <asp:Parameter Name="Estatura" Type="Double" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Paquete" Type="String" />
                <asp:Parameter Name="original_IdUsuario" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Apaterno" Type="String" />
                <asp:Parameter Name="original_Amaterno" Type="String" />
                <asp:Parameter Name="original_Peso" Type="Int32" />
                <asp:Parameter Name="original_Edad" Type="Int32" />
                <asp:Parameter Name="original_Estatura" Type="Double" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Paquete" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
        </header>
</body>
</html>
