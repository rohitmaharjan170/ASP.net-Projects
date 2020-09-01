<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rohit_web_application.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Is A Web Form</title>
    <style type="text/css">
        #Text1 {
            width: 217px;
            margin-left: 96px;
            margin-bottom: 0px;
        }
        #txtPrincipal {
            width: 217px;
            margin-left: 45px;
        }
        #Text2 {
            width: 218px;
            margin-left: 121px;
        }
        #txtRate {
            width: 217px;
            margin-left: 121px;
        }
        #txtTime {
            width: 212px;
            margin-left: 120px;
        }
        #txtResult {
            width: 209px;
            margin-left: 100px;
        }
    </style>
</head>
<body>
    <h1> This is A Simple Interest Calcuator</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Enter Principal Amount"></asp:Label>
            <input id="txtPrincipal" name="txtPrinicpal" type="text" /></div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter Rate"></asp:Label>
            <input id="txtRate" type="text" /></p>
        <asp:Label ID="Label3" runat="server" Text="Enter Time"></asp:Label>
        <input id="txtTime" type="text" /><p>
            <asp:Button ID="btnCalculateInterest" runat="server" OnClick="btnCalculateInterest_Click" style="margin-left: 183px" Text="Calculate Interest" Width="121px" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" style="margin-left: 22px" Text="Reset" Width="85px" />
        </p>
        <asp:Label ID="Label4" runat="server" Text="The Interest is :"></asp:Label>
        <input id="txtResult" type="text" /></form>
        
</body>
</html>
