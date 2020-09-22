<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="User_Login_nuGet_valid.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link rel ="stylesheet" href="Content/bootstrap.min.css" />
    <style type="text/css">
        #form1 {
            height: 432px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <asp:Panel ID="Panel1" runat="server" Height="431px" BackColor="#FFCC66" DefaultButton="btnSubmit">
      <div class="row">
            <div class="container-fluid col-md-12" style="text-align:center; top: 0px; left: 0px; height: 346px;">
                <h1>User Login with NuGet Bootstrap and In-buit Validation</h1>
                <hr />
                <br />
                    <div class="container-fluid col-md-2" style="text-align:left; background-color:dimgrey; height: 257px; top: 0px; left: 0px;">
                             <asp:Label ID="Label1" runat="server" Text="UserName:" ForeColor="White"></asp:Label>
                             &nbsp&nbsp&nbsp<asp:Label ID="errUserName" runat="server" Text="* Please Enter User Name" margin-left="20px" ForeColor="Red" Visible="False"></asp:Label>
                             <asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox>
                             <br />
                             <br />
                             <asp:Label ID="Label2" runat="server" Text="Password   :" ForeColor="White"></asp:Label>
                             &nbsp&nbsp&nbsp<asp:Label ID="errPassword" runat="server" Text="* Please Enter Password" margin-left="20px" ForeColor="Red" Visible="False"></asp:Label>
                             <asp:TextBox ID="txtPassword" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                             <br />
                             &nbsp&nbsp&nbsp<asp:Label ID="errLogin" runat="server" ForeColor="Red" Text=" * Credientail doesn't match" Visible="False"></asp:Label>
                             <br />
                             <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="80px" OnClick="btnSubmit_Click"/>
                             <asp:Label ID="Label3" runat="server" Text="Test: admin for both field" margin-left="20px" ForeColor="White"></asp:Label>
                             <br />
                             <br />
                             <asp:Button ID="btnReset" runat="server" Text="Reset" Width="77px" OnClick="btnReset_Click" />
                    </div>
               </div>

        </div>
  </asp:Panel>
    </form>
</body>
</html>
