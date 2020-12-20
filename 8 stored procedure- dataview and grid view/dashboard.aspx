<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="sample1.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Application Dashboard</h1>
            <p>Book Details</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Acc No."></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbAccNo" runat="server" Enabled="False" style="margin-left: 59px" Width="50px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Book Title"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbBookTitle" runat="server" style="margin-left: 48px" Width="244px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbAuthor" runat="server" style="margin-left: 71px" Width="243px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Publisher"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbPublisher" runat="server" style="margin-left: 58px" Width="244px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Qty in Stock"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbQty" runat="server" style="margin-left: 35px"></asp:TextBox>
            </p>
            <p style="margin-left: 40px">
                <asp:Button ID="btnSave" runat="server" Text="Save" />
                <asp:Button ID="btnDelete" runat="server" Enabled="False" Text="Delete" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
            </p>
            <p style="margin-left: 40px">
                <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="#009900"></asp:Label>
            </p>
            <p style="margin-left: 40px">
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </p>
            <p style="margin-left: 40px">
                <asp:GridView ID="gvBookDetails" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="AccNo" HeaderText="Accession No." />
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="Pub" HeaderText="Publisher" />
                        <asp:BoundField DataField="Qty" HeaderText="Quantity" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
    </form>
</body>
</html>
