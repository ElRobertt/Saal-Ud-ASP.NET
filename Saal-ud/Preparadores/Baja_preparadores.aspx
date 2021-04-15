<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja_preparadores.aspx.cs" Inherits="Saal_ud.Baja_preparadores" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/index.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/suscripciones.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/index2.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/descargas.css"/>
    <title>Preparadores</title>
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
                    <li><a href="ConsultaGeneralAtributoPreparador.aspx">Consulta Por Atributo</a></li>
                    <li><a href="ConsultaGeneralPreparadores.aspx">Consulta General</a></li>
                    <li><a href="Nutriologos.aspx">Regresar</a></li>
                </ul>
            </div>
        </nav>
    </nav>

        <section class="sub">

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlPreparadoresDev" KeyFieldName="IdPreparador" EnableTheming="True" Theme="Default">
                <SettingsPager Visible="False">
                </SettingsPager>
                <SettingsCommandButton>
                    <DeleteButton ButtonType="Image" RenderMode="Image">
                        <Image Height="20px" Url="~/Imagenes/delete2.png">
                        </Image>
                    </DeleteButton>
                </SettingsCommandButton>
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                        <HeaderStyle BackColor="Red" />
                        <CellStyle BackColor="Red" Border-BorderStyle="None">
                        </CellStyle>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="IdPreparador" ReadOnly="True" VisibleIndex="1" ShowInCustomizationForm="True" Visible="False">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Sueldo" VisibleIndex="3" ShowInCustomizationForm="True">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Border-BorderStyle="None" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Edad" VisibleIndex="4" ShowInCustomizationForm="True">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Border-BorderStyle="None" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Sexo" VisibleIndex="5" ShowInCustomizationForm="True">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Border-BorderStyle="None" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Pago" VisibleIndex="6" ShowInCustomizationForm="True">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Border-BorderStyle="None" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="AreaAsignada" VisibleIndex="2" ShowInCustomizationForm="True">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center" />
                        <CellStyle BackColor="#050311" Border-BorderStyle="None" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center">
                            <BorderLeft BorderStyle="None" />
                            <BorderRight BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>

        </section>
        <footer>

        </footer>

        <asp:SqlDataSource ID="SqlPreparadoresDev" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>" DeleteCommand="DELETE FROM [Preparadores] WHERE [IdPreparador] = @original_IdPreparador AND [AreaAsignada] = @original_AreaAsignada AND [Sueldo] = @original_Sueldo AND [Edad] = @original_Edad AND [Sexo] = @original_Sexo AND [Pago] = @original_Pago" InsertCommand="INSERT INTO [Preparadores] ([AreaAsignada], [Sueldo], [Edad], [Sexo], [Pago]) VALUES (@AreaAsignada, @Sueldo, @Edad, @Sexo, @Pago)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Preparadores]" UpdateCommand="UPDATE [Preparadores] SET [AreaAsignada] = @AreaAsignada, [Sueldo] = @Sueldo, [Edad] = @Edad, [Sexo] = @Sexo, [Pago] = @Pago WHERE [IdPreparador] = @original_IdPreparador AND [AreaAsignada] = @original_AreaAsignada AND [Sueldo] = @original_Sueldo AND [Edad] = @original_Edad AND [Sexo] = @original_Sexo AND [Pago] = @original_Pago">
            <DeleteParameters>
                <asp:Parameter Name="original_IdPreparador" Type="Int32" />
                <asp:Parameter Name="original_AreaAsignada" Type="String" />
                <asp:Parameter Name="original_Sueldo" Type="Int32" />
                <asp:Parameter Name="original_Edad" Type="Int32" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Pago" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AreaAsignada" Type="String" />
                <asp:Parameter Name="Sueldo" Type="Int32" />
                <asp:Parameter Name="Edad" Type="Int32" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Pago" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AreaAsignada" Type="String" />
                <asp:Parameter Name="Sueldo" Type="Int32" />
                <asp:Parameter Name="Edad" Type="Int32" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Pago" Type="String" />
                <asp:Parameter Name="original_IdPreparador" Type="Int32" />
                <asp:Parameter Name="original_AreaAsignada" Type="String" />
                <asp:Parameter Name="original_Sueldo" Type="Int32" />
                <asp:Parameter Name="original_Edad" Type="Int32" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Pago" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
        </header>
</body>
</html>
