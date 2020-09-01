<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI_Calculator.aspx.cs" Inherits="BMI_Calculator_Rohit.BMI_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BMI Calculator</title>

     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      
    <link rel="stylesheet" type="text/css" href="Resource/CSS/style.css">
</head>
<body>
	<nav>
		<h1 style="color: cornflowerblue;"> BMI Calculator</h1>
	</nav>
    <form id="frmBMICalculator" runat="server">
        <div class="container-fluid border border-dark">
           
            <asp:Label ID="Label1" runat="server" Text="Enter Height :"></asp:Label> &nbsp &nbsp
            <asp:TextBox ID="txtHeightFt" runat="server" Height="20px" placeholder="Feet"></asp:TextBox>
            <asp:TextBox ID="txtHeightInches" runat="server" Height="20px" placeholder="Inches"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Weight :"></asp:Label>   &nbsp&nbsp;
            <asp:TextBox ID="txtWeightKg" runat="server" Height="19px" placeholder="Kg"></asp:TextBox>
            <br />    <br />

            <asp:Button ID="btnCalculateBMI" runat="server" Text="Calculate BMI" style="margin: 0 20px 0 0" OnClick="btnCalculateBMI_Click" /> 
            <asp:Button ID="btnReset" runat="server" Text="Reset" Width="136px" OnClick="btnReset_Click" />
            <br />    
            <br />

            <asp:Label ID="Label3" runat="server" Text="Your BMI :"  style="margin: 0 20px 0 0" ></asp:Label>

            <asp:Button ID="btnResult" runat="server" Height="24px" Text="----" Width="139px" Enabled="False" />

        </div> 
    </form>
</body>
</html>


