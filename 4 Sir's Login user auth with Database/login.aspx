<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="sample1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnLogin">
        Welcome to Our Page<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="tbUserName" runat="server" style="margin-left: 61px" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="tbPassword" runat="server" style="margin-left: 73px" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" style="margin-left: 136px" Text="Login" Width="76px" OnClick="btnLogin_Click" />
        <asp:Button ID="btnReset" runat="server" style="margin-left: 13px" Text="Reset" Width="72px" OnClick="btnReset_Click" />
    </form>
</body>
</html>
