<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaUsuario.aspx.cs" Inherits="Saal_ud.BajaUsuario" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <li><a> </a></li>
            <li><a href="BajaUsuario.aspx">Baja de usuario</a></li>
            <li><a href="altaLogin.aspx">Regresar</a></li>
              </ul>
           </div>
            </nav>
              <nav>
    
    </nav>
        <nav>
        <ul>
            <li> <a href="altaLogin.aspx">LOGIN MENU</a></li>
        </ul>
        
    </nav>
    <form id="form1" runat="server" class="tables">
       
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="IdLogin">
            <SettingsCommandButton>
                <DeleteButton ButtonType="Image" RenderMode="Image">
                    <Image Height="20px" Url="~/Imagenes/delete2.png">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="IdLogin" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Usuario" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Pasword" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SalUdConnectionString %>" DeleteCommand="DELETE FROM [loginn] WHERE [IdLogin] = @original_IdLogin AND [Usuario] = @original_Usuario AND [Pasword] = @original_Pasword" InsertCommand="INSERT INTO [loginn] ([Usuario], [Pasword]) VALUES (@Usuario, @Pasword)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [loginn]" UpdateCommand="UPDATE [loginn] SET [Usuario] = @Usuario, [Pasword] = @Pasword WHERE [IdLogin] = @original_IdLogin AND [Usuario] = @original_Usuario AND [Pasword] = @original_Pasword">
            <DeleteParameters>
                <asp:Parameter Name="original_IdLogin" Type="Int32" />
                <asp:Parameter Name="original_Usuario" Type="String" />
                <asp:Parameter Name="original_Pasword" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Pasword" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Pasword" Type="String" />
                <asp:Parameter Name="original_IdLogin" Type="Int32" />
                <asp:Parameter Name="original_Usuario" Type="String" />
                <asp:Parameter Name="original_Pasword" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
        </form>
    </header>
    
</body>
</html>
