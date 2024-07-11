<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="iHospital.Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Question Page</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
 
</head>
<body>
     <form id="form1" runat="server">
        <div class="questions-center-container">
            <div class="questions-form-content">
                <asp:Label ID="lblGender" runat="server" Text="1. Select your gender"></asp:Label>
            <div class="radio-horizontal">
             <asp:RadioButtonList ID="rblGender" runat="server">
                 <asp:ListItem Text="Men" Value="Men"></asp:ListItem>
                 <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                 <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
             </asp:RadioButtonList>
             </div>
                <br />
                <asp:Label ID="lblAge" runat="server" Text="2. Select your Age"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlAge" runat="server">
                    <asp:ListItem Text="0-5" Value="0-5"></asp:ListItem>
                    <asp:ListItem Text="5-10" Value="5-10"></asp:ListItem>
                    <asp:ListItem Text="10-15" Value="10-15"></asp:ListItem>
                    <asp:ListItem Text="15-20" Value="15-20"></asp:ListItem>
                    <asp:ListItem Text="20-25" Value="20-25"></asp:ListItem>
                    <asp:ListItem Text="25-30" Value="25-30"></asp:ListItem>
                    <asp:ListItem Text="30-35" Value="30-35"></asp:ListItem>
                    <asp:ListItem Text="35-40" Value="35-40"></asp:ListItem>
                    <asp:ListItem Text="40-45" Value="40-45"></asp:ListItem>
                    <asp:ListItem Text="45-50" Value="45-50"></asp:ListItem>
                    <asp:ListItem Text="50-55" Value="50-55"></asp:ListItem>
                    <asp:ListItem Text="55-60" Value="55-60"></asp:ListItem>
                    <asp:ListItem Text="60-65" Value="60-65"></asp:ListItem>
                    <asp:ListItem Text="65-70" Value="65-70"></asp:ListItem>
                    <asp:ListItem Text="70-75" Value="70-75"></asp:ListItem>
                    <asp:ListItem Text="75-80" Value="75-80"></asp:ListItem>
                    <asp:ListItem Text="80-85" Value="80-85"></asp:ListItem>
                    <asp:ListItem Text="85-90" Value="85-90"></asp:ListItem>
                    <asp:ListItem Text="90+" Value="90+"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="lblState" runat="server" Text="3. Select your state or territory of Australia"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlStateTerritory" runat="server">
                    <asp:ListItem Text="New South Wales" Value="New South Wales"></asp:ListItem>
                    <asp:ListItem Text="Victoria" Value="Victoria"></asp:ListItem>
                    <asp:ListItem Text="Queensland" Value="Queensland"></asp:ListItem>
                    <asp:ListItem Text="Western Australia" Value="Western Australia"></asp:ListItem>
                    <asp:ListItem Text="South Australia" Value="South Australia"></asp:ListItem>
                    <asp:ListItem Text="Tasmania" Value="Tasmania"></asp:ListItem>
                    <asp:ListItem Text="Northern Territory" Value="Northern Territory"></asp:ListItem>
                    <asp:ListItem Text="Australian Capital Territory" Value="Australian Capital Territory"></asp:ListItem>
                </asp:DropDownList>
                <br />


                <div class="questions-button-container">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="questions-button" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
