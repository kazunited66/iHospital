<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="iHospital.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       
          
           <asp:Label ID="lblWelcome" runat="server" Text="Welcome to the iHospital" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <div>
                <asp:Label ID="lblStaffLogin" runat="server" Text="Login"></asp:Label>
                <asp:Button ID="btnStaffLogin" runat="server" Text="Staff Login" OnClick="btnStaffLogin_Click" style="text-align: right"  />
            </div>
            <br />
            <br />
            <div>
                <asp:Label ID="lblSurvey" runat="server" Text="Take a survey"></asp:Label>
                <asp:HyperLink ID="hypUserSurvey" runat="server" NavigateUrl="Questions.aspx" Text="Start User Survey"  />
            </div>
     
    </form>
</body>
</html>
