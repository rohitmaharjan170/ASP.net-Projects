<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SICalculator.aspx.cs" Inherits="SICalculatorWeb.SICalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <h1> Simple Interest Calculator in ASP.NET</h1>
        <div>
          <b>Principal Amount (NRs):</b>
          <asp:TextBox ID="txtPrincipalAmt" runat="server"></asp:TextBox><br />
          <b>Period (in Years):</b>
          <asp:TextBox ID="txtPeriod" runat="server"></asp:TextBox><br />
            <b>Interest Rate(% PA):</b>
            <asp:TextBox ID="txtInterest" runat="server"></asp:TextBox> <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" 			OnClick="btnCalculate_Click"  CssClass="btnStyle"/>
        </div>    
        <div>
                <h3>Output of simple interest calculation</h3>
                <b>Total Amount (NRs):</b><asp:TextBox ID="txtTotalAmt" runat="server"></asp:TextBox> <br />
                <b>Interest Amount (NRs):</b><asp:TextBox ID="txtIntAmt" runat="server"></asp:TextBox> <br />
        </div>
    </form>

</body>
</html>
