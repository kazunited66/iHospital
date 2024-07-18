<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="iHospital.UserSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Sign Up</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="center-container">
                <div class="signUpform-content">
                    <asp:Label ID="lblSignUpStaff" runat="server" Text="Sign Up" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large"></asp:Label>
                    <br />
                    <asp:Label ID="lblGivenName" runat="server" Text="Given Name"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage=":Given Name is required"
                        ControlToValidate="tbxGivenName"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="tbxGivenName" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblFamilyName" runat="server" Text="Family Name"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server" ErrorMessage=":Family Name is required"
                        ControlToValidate="tbxFamilyName"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="tbxFamilyName" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblDOB" runat="server" Text="Date of Birth"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                        runat="server" ErrorMessage=":Date of Birth is required"
                        ControlToValidate="tbxDOB"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1"
                        runat="server" ErrorMessage=":Invalid Date of Birth"
                        ControlToValidate="tbxDOB"
                        Display="Dynamic"
                        MinimumValue="01/01/1900"
                        MaximumValue="10/07/2024"
                        Type="Date" ForeColor="Red"></asp:RangeValidator>
                    <asp:TextBox ID="tbxDOB" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblNumber" runat="server" Text="Contact Number"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        runat="server" ErrorMessage=":Contact Number is required"
                        ControlToValidate="tbxNumber"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="tbxNumber" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign UP" CssClass="signUpButton" Width="50%" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="<b>Please review the following errors:" ForeColor="Red" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
