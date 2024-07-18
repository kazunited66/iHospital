<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogIn.aspx.cs" Inherits="iHospital.StaffSignUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Log in</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="center-container">
            <div class="signUpform-content">
                <asp:Label ID="lblLoginStaff" runat="server" Text="Staff Log in" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" ></asp:Label>
                <br />
                <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage=":User Name is required"
                    ControlToValidate="tbxUserName"
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>-->
                <asp:TextBox ID="tbxUserName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label> 
               <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage=":Password is required"
                    ControlToValidate="tbxPassword"
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator> -->
                <asp:TextBox ID="tbxPassword" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblSignUp" runat="server" Text="If you have't registered yet"></asp:Label>
                <asp:HyperLink ID="hlStaffSignUp" runat="server" NavigateUrl="StaffSignUp.aspx">
                    <asp:Label ID="lblStaffSignUp" runat="server" Text="Sign up from here" />
                </asp:HyperLink>
                <br />
                <br />
                <asp:Button ID="btnSignUp" runat="server" Text="Log in" CssClass="signUpButton" Width="50%" />
     
            </div>
        </div>
    </form>
</body>
</html>
