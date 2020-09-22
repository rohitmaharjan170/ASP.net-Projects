<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Login_wih_DataBase.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnLogin">
        <asp:Label ID="Label3" runat="server" Text="Login Page"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" style="margin-left: 56px" Width="224px"></asp:TextBox>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 65px" Width="222px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" style="margin-left: 144px" Text="Login" Width="87px" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" style="margin-left: 30px" Text="Reset" Width="73px" />
        </div>
    </form>
</body>
</html>
