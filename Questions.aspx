<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="iHospital.Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Question Page</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <script src="scripts.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="questions-center-container">
            <div class="questions-form-content">

                <asp:Label ID="lblGender" runat="server" Text="1.Select your gender"></asp:Label>
                <asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem Text="Men" Value="Men"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:RadioButtonList>

                <br />
                <asp:Label ID="lblAge" runat="server" Text="2.Select your Age"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlAge" runat="server" Width="100%">
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
                <asp:Label ID="lblState" runat="server" Text="3.Select your state or territory of Australia"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlStateTerritory" runat="server" Width="100%">
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
                <asp:Label ID="lblSuburb" runat="server" Text="4.Select your suburb and postcode"></asp:Label>
                <br />
                <asp:TextBox ID="tbxSuburb" runat="server" placeholder="Enter your suburb" Width="100%"></asp:TextBox>
                <br />
                <asp:TextBox ID="tbxPostcode" runat="server" placeholder="Enter your postcode" Width="100%"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="5.Fill your Email address"></asp:Label>
                <br />
                <asp:TextBox ID="tbxEmail" runat="server" placeholder="Enter your email" Width="100%"></asp:TextBox>
                <br />
                <asp:Label ID="lblService" runat="server" Text="6.Select your type of service"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlService" runat="server" Width="100%" onchange="toggleRoomTypeDropdown()">
                    <asp:ListItem Text="Day Surgery" Value="Day Surgery"></asp:ListItem>
                    <asp:ListItem Text="Pathology" Value="Pathology"></asp:ListItem>
                    <asp:ListItem Text="Rehabilitation" Value="Rehabilitation"></asp:ListItem>
                    <asp:ListItem Text="Operation/Surgery" Value="Operation/Surgery"></asp:ListItem>

                </asp:DropDownList>
                <br />
                <br />
                <div id="roomTypeSection" style="display: none;">
                    <asp:Label ID="lblRoomType" runat="server" Text="If you selected Rehabilitation or Operation/Surgery, Select Room Type "></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlRoomType" runat="server" Width="80%" onchange="toggleStayPeriodDropdown()">
                        <asp:ListItem Text="Public Standard Room" Value="Public Standard Room"></asp:ListItem>
                        <asp:ListItem Text="Public Cluster Room" Value="Public Cluster Room"></asp:ListItem>
                        <asp:ListItem Text="Public Single Room" Value="Public Single Room"></asp:ListItem>
                        <asp:ListItem Text="Private Room" Value="Private Room"></asp:ListItem>
                    </asp:DropDownList>

                    <div id="stayPeriodSection" style="display: none;">
                        <br />
                        <asp:Label ID="lblStayPeriod" runat="server" Text="If you selected Public Single Room or Private room,<br />select additional Stay Period"></asp:Label>
                        <br />
                        <asp:DropDownList ID="ddlStayPeriod" runat="server" Width="80%">
                            <asp:ListItem Text="Additional 1 week" Value="1 week"></asp:ListItem>
                            <asp:ListItem Text="Additional 2 weeks" Value="2 weeks"></asp:ListItem>
                            <asp:ListItem Text="Additional 3 weeks" Value="3 weeks"></asp:ListItem>
                            <asp:ListItem Text="Additional 4 weeks" Value="4 weeks"></asp:ListItem>
                            <asp:ListItem Text="Additional more than 1 month" Value="more than 1 month"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div id="InRoomServiceSection" style="display: none;">
                        <br />
                        <asp:Label ID="lblInRoomServiceSection" runat="server" Text="If you selected Public Single Room or Private room,<br />select additional In-Room Service"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="80%">
                            <asp:ListItem Text="Nurse Assistant Call" Value="Nurse Assistant Call"></asp:ListItem>
                            <asp:ListItem Text="Touch Screen Entertainment" Value="Touch Screen Entertainment"></asp:ListItem>
                            <asp:ListItem Text="WiFi" Value="WiFi"></asp:ListItem>
                            <asp:ListItem Text="Meal Order" Value="Meal Order"></asp:ListItem>
                            <asp:ListItem Text="Patiant Information" Value="Patiant Information"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div id=" wifiServiceSection" style="display: none;">
                        <br />
                        <asp:Label ID="lblWifiService" runat="server" Text="If you selected Wifi,<br />select service type(you can select moltiple services)"></asp:Label>
                        <br />
                        <asp:DropDownList ID="ddlWifiServeice" runat="server" Width="80%">
                            <asp:ListItem Text="30 Minutes Free WiFi (Reset Daily)" Value="Free"></asp:ListItem>
                            <asp:ListItem Text="$1 for 1 hour Full Speed WiFi" Value="1 dollar"></asp:ListItem>
                            <asp:ListItem Text="$5 for 1 day Full Sprred WiF" Value="5 dollar"></asp:ListItem>
                            <asp:ListItem Text="$20 for 1 week Full Speed WiFi" Value="20 dollar"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <asp:Label ID="lblInsurance" runat="server" Text="7.Select your Insurance"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlInsurance" runat="server" Width="100%">
                    <asp:ListItem Text="AHM" Value="AHM"></asp:ListItem>
                    <asp:ListItem Text="AIA" Value="AIA"></asp:ListItem>
                    <asp:ListItem Text="Bupa" Value="Bupa"></asp:ListItem>
                    <asp:ListItem Text="HCF" Value="HCF"></asp:ListItem>
                    <asp:ListItem Text="Medibank" Value="Medibank"></asp:ListItem>
                    <asp:ListItem Text="nib" Value="nib"></asp:ListItem>
                    <asp:ListItem Text="I do not have insurence" Value="nib"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="lblDischargePlan" runat="server" Text="8.Select Discharge Plan"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlDischargePlan" runat="server" Width="100%">
                    <asp:ListItem Text=" Follow-up Tests" Value=" Follow-up Tests"></asp:ListItem>
                    <asp:ListItem Text="Next Appointments" Value="Next Appointments"></asp:ListItem>
                    <asp:ListItem Text="Aftercare Equipment" Value="Aftercare Equipment"></asp:ListItem>
                    <asp:ListItem Text="Aftercare Medication" Value="Aftercare Medication"></asp:ListItem>
                    <asp:ListItem Text="Dietary Plank" Value="Dietary Plan"></asp:ListItem>
                    <asp:ListItem Text="Restrictions Note" Value="Restrictions Note"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:HyperLink ID="hlUserSignUp" runat="server" NavigateUrl="UserSignUp.aspx">
                    <asp:Label ID="lblUserSignUp" runat="server" Text="Would you like to register?" />
                </asp:HyperLink>
                <br />
                <div class="questions-button-container">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="questions-button" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
