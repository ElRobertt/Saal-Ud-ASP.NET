<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja_Nutriologo.aspx.cs" Inherits="Saal_ud.Baja_Nutriologo" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/index.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/suscripciones.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/index2.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/descargas.css"/>
    <title>Nutriologos</title>
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
                    <li><a href="ConsultaGeneralNutriologo.aspx">Consulta General</a></li>
                    <li><a href="ConsultaGeneralAtributo.aspx">Consulta Por Clave</a></li>
                    <li><a href="Nutriologos.aspx">Regresar</a></li>
                </ul>
            </div>
        </nav>
    </nav>
        <section class="sub">

            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlNutriologoDev" KeyFieldName="IdNutriologo">
                <SettingsPager PageSize="15" Visible="False">
                </SettingsPager>
                <SettingsCommandButton>
                    <DeleteButton ButtonType="Image" RenderMode="Image">
                        <Image Height="20px" Url="~/Imagenes/delete2.png">
                        </Image>
                    </DeleteButton>
                </SettingsCommandButton>
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                        <HeaderStyle BackColor="Red" Border-BorderColor="Red" Border-BorderStyle="None" ForeColor="White" />
                        <CellStyle BackColor="Red" Border-BorderStyle="None" ForeColor="White">
                        </CellStyle>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="IdNutriologo" ReadOnly="True" VisibleIndex="1" Visible="False">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="AreasAsignadas" VisibleIndex="2">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" Border-BorderWidth="0px" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" />
                        <CellStyle BackColor="#050311" Font-Names="Calibri Light" Font-Size="Small" ForeColor="White" HorizontalAlign="Center">
                            <BorderRight BorderColor="#050311" BorderStyle="None" />
                        </CellStyle>
                        <ExportCellStyle BackColor="Red" BorderSize="0" Font-Names="Century Schoolbook" Font-Size="Medium" ForeColor="White">
                            <Paddings Padding="1px" />
                        </ExportCellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Sueldo" VisibleIndex="3">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" />
                        <CellStyle BackColor="#050311" Font-Names="Calibri Light" Font-Size="Small" ForeColor="White" HorizontalAlign="Center">
                            <BorderRight BorderColor="#050311" BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Edad" VisibleIndex="4">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" />
                        <CellStyle BackColor="#050311" Font-Names="Calibri Light" Font-Size="Small" ForeColor="White" HorizontalAlign="Center">
                            <BorderRight BorderColor="#050311" BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Sexo" VisibleIndex="5">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" />
                        <CellStyle BackColor="#050311" Font-Names="Calibri Light" Font-Size="Small" ForeColor="White" HorizontalAlign="Center">
                            <BorderRight BorderColor="#050311" BorderStyle="None" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Pago" VisibleIndex="6">
                        <HeaderStyle BackColor="Red" Border-BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="White" />
                        <CellStyle BackColor="#050311" Font-Names="Calibri Light" Font-Size="Small" ForeColor="White" HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
                <Styles>
                    <PagerBottomPanel BackColor="#050311" Border-BorderStyle="None" ForeColor="White" HorizontalAlign="Center">
                    </PagerBottomPanel>
                </Styles>
            </dx:ASPxGridView>

        </section>
        <footer>

        </footer>
        <asp:SqlDataSource ID="SqlNutriologoDev" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>" DeleteCommand="DELETE FROM [Nutriologo] WHERE [IdNutriologo] = @original_IdNutriologo AND [AreasAsignadas] = @original_AreasAsignadas AND [Sueldo] = @original_Sueldo AND [Edad] = @original_Edad AND [Sexo] = @original_Sexo AND [Pago] = @original_Pago" InsertCommand="INSERT INTO [Nutriologo] ([AreasAsignadas], [Sueldo], [Edad], [Sexo], [Pago]) VALUES (@AreasAsignadas, @Sueldo, @Edad, @Sexo, @Pago)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Nutriologo]" UpdateCommand="UPDATE [Nutriologo] SET [AreasAsignadas] = @AreasAsignadas, [Sueldo] = @Sueldo, [Edad] = @Edad, [Sexo] = @Sexo, [Pago] = @Pago WHERE [IdNutriologo] = @original_IdNutriologo AND [AreasAsignadas] = @original_AreasAsignadas AND [Sueldo] = @original_Sueldo AND [Edad] = @original_Edad AND [Sexo] = @original_Sexo AND [Pago] = @original_Pago">
            <DeleteParameters>
                <asp:Parameter Name="original_IdNutriologo" Type="Int32" />
                <asp:Parameter Name="original_AreasAsignadas" Type="String" />
                <asp:Parameter Name="original_Sueldo" Type="Int32" />
                <asp:Parameter Name="original_Edad" Type="Int32" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Pago" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AreasAsignadas" Type="String" />
                <asp:Parameter Name="Sueldo" Type="Int32" />
                <asp:Parameter Name="Edad" Type="Int32" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Pago" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AreasAsignadas" Type="String" />
                <asp:Parameter Name="Sueldo" Type="Int32" />
                <asp:Parameter Name="Edad" Type="Int32" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Pago" Type="String" />
                <asp:Parameter Name="original_IdNutriologo" Type="Int32" />
                <asp:Parameter Name="original_AreasAsignadas" Type="String" />
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
