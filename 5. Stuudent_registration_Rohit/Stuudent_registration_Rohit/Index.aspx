<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Stuudent_registration_Rohit.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login Registration -Rohit</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
      
    <link rel="stylesheet" type="text/css" href="Resource/CSS/style.css" />
    <style type="text/css">
        .row {
            height: 491px;
        }
        #form1 {
            height: 840px;
        }
    </style>
</head>
<body style="height: 985px">
 
    <form id="form1" runat="server">
        <asp:Panel ID="frmPanel_Stu_Login" runat="server" Height="985px" BackColor="#99CCFF" BorderColor="#003366">
            <div class="row">
                <div class="container col-lg-8" style="text-align:center; top: 0px; left: 0px; height: 394px; width: 1297px;">

                    <h1>Student Registration</h1>

                    <br />
                        <div class="container-fluid" style="text-align:left; margin-top: 0px; height: 323px;">
                            <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label> &nbsp;<asp:TextBox ID="txtFName" runat="server" Height="19px" Width="202px" style="margin-left: 9px"></asp:TextBox >
                            &nbsp &nbsp
                            <asp:Label ID="Label2" runat="server" Text="Middle Name :"></asp:Label> 
                            <asp:TextBox ID="txtMName" runat="server" Height="21px" Width="184px" style="margin-left: 17px" placeholder="- - Optional - -"></asp:TextBox>
                            &nbsp&nbsp
                            <asp:Label ID="Label3" runat="server" Text="Last Name :"></asp:Label> 
                            <asp:TextBox ID="txtLName" runat="server" Height="17px" style="margin-left: 15px" Width="163px"></asp:TextBox>
                            <br /> <br />   

                            <!-- Gender Radio box -->
                            <asp:Label ID="Label4" runat="server" Text="Gender  : "></asp:Label> &nbsp&nbsp
                            <asp:RadioButton ID="radMale" runat="server" Text="Male" GroupName="radGender" /> &nbsp &nbsp
                            <asp:RadioButton ID="radFemale" runat="server" Text="Female" GroupName="radGender" />
                            &nbsp;<asp:Label ID="txtGenderError" runat="server" ForeColor="Red" Text="*Required" Visible="False"></asp:Label>
                            <br /> <br />
                            <asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
                            <asp:TextBox ID="txtAddress" runat="server" Height="20px" style="margin-left: 33px" Width="313px"></asp:TextBox>
                            <asp:Label ID="txtErrorAddress" runat="server" ForeColor="Red" Text="*Enter Address" Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Contact No. :"></asp:Label>
                            <asp:TextBox ID="txtContactNo" runat="server" style="margin-left: 7px" Width="312px" Height="21px"></asp:TextBox>
                            <asp:Label ID="txtErrorContact" runat="server" ForeColor="Red" Text="*Enter Contact No." Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Batch  :    "></asp:Label>
                            <asp:TextBox ID="txtBatch" runat="server" style="margin-left: 49px" Width="313px" Height="19px"></asp:TextBox>
                            <asp:Label ID="txtErrorBatch" runat="server" ForeColor="Red" Text="*Enter Batch No" Visible="False"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <div class ="UserAuthInfo" title="User Auth Info" >
                                <asp:Label ID="txtUserName" runat="server" Text="UserName :"></asp:Label>
                                <asp:TextBox ID="txtRegUserName" runat="server" style="margin-left: 26px" Width="303px" Height="19px"></asp:TextBox>
                                <asp:Label ID="txtRegErrorUserName" runat="server" ForeColor="Red" Text="*Enter Username" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="txtPassword" runat="server" Text="Password :"></asp:Label>
                                <asp:TextBox ID="TxtRegPassword" type="password" runat="server" style="margin-left: 33px" Width="303px" Height="19px"></asp:TextBox>
                                <asp:Label ID="txtRegErrorPassword" runat="server" ForeColor="Red" Text="*Enter Password" Visible="False"></asp:Label>
                            </div>
                            <br />
                            <br />
                        </div>

                    <div class ="ActionBar">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" style="margin-left: 0px" Width="98px" OnClick="btnRegister_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" style="margin-left: 41px" Width="108px" OnClick="btnReset_Click" />
</div>

                </div>
            </div>
            <div class="row">
                <div class="container col-lg-8" style="text-align:center; top: 0px; left: 0px; height: 496px;">
                    <hr /> <hr /> 
                    <h1 style="width: 1299px">Student Login
                    </h1>

                    <br />
                        <div class="container-fluid" style="text-align:left; margin-top: 0px; height: 74px;">
                            
                            <div class ="UserLogin" title="User Auth Info" >
                                <asp:Label ID="Label19" runat="server" Text="UserName :"></asp:Label>
                                <asp:TextBox ID="txtLoginUserName" runat="server" style="margin-left: 26px" Width="303px" Height="19px"></asp:TextBox>
                                <asp:Label ID="txtLoginErrorUserName" runat="server" ForeColor="Red" Text="*Enter Username" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="Label21" runat="server" Text="Password :"></asp:Label>
                                <asp:TextBox ID="txtLoginPassword" type="password" runat="server" style="margin-left: 33px" Width="303px" Height="19px"></asp:TextBox>
                                <asp:Label ID="txtLoginErrorPassword" runat="server" ForeColor="Red" Text="*Enter Password" Visible="False"></asp:Label>
                                <br />
                                <br />
                                
                                <asp:Label ID="txtErrorLogin" runat="server" Text="*Login Crediental doesn''t match !!" ForeColor="Red" Visible="False"></asp:Label>

                            </div>
                            <br />
                            <br />
                        </div>

                    <div class ="ActionBar">
                        
                        <asp:Button ID="btnLogin" runat="server" Text="Login" style="margin-left: 0px" Width="98px" OnClick="btnLogin_Click" />
                        <asp:Button ID="btnResetOnLogin" runat="server" Text="Reset" style="margin-left: 41px" Width="108px" OnClick="btnLoginReset_Click" />
</div>

                </div>

            </div>
        </asp:Panel>
    </form>
 
</body>
</html>
