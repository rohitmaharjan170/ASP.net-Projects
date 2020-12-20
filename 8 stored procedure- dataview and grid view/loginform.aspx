<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="sample1.loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to AIC<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="tbUsername" runat="server" style="margin-left: 61px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server" style="margin-left: 71px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" style="margin-left: 131px" Text="Login" Width="54px" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" style="margin-left: 19px" Text="Reset" Width="55px" />
            <br />
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
    </form>

    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
