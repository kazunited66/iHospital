function toggleRoomTypeDropdown() {
    var ddlService = document.getElementById('<%= ddlService.ClientID %>');
    var selectedValue = ddlService.options[ddlService.selectedIndex].value;
    var roomTypeSection = document.getElementById('roomTypeSection');
    if (selectedValue === 'Rehabilitation' || selectedValue === 'Operation/Surgery') {
        roomTypeSection.style.display = 'inherit';
    } else {
        roomTypeSection.style.display = 'none';
    }
}

function toggleStayPeriodDropdown() {
    var ddlRoomType = document.getElementById('<%= ddlRoomType.ClientID %>');
    var selectedValue = ddlRoomType.options[ddlRoomType.selectedIndex].value;
    var stayPeriodSection = document.getElementById('stayPeriodSection');
    if (selectedValue === 'Public Single Room' || selectedValue === 'Private Room') {
        stayPeriodSection.style.display = 'block';
    } else {
        stayPeriodSection.style.display = 'none';
    }
}

// Function to toggle display of InRoomServiceSection based on selection
function toggleInRoomServiceSection() {
    var ddlStayPeriod = document.getElementById('<%= ddlStayPeriod.ClientID %>');
    var selectedValue = ddlStayPeriod.options[ddlStayPeriod.selectedIndex].value;

    // Get the div to display the InRoomServiceSection
    var inRoomServiceDiv = document.getElementById('InRoomServiceSection');

    // Check if selected value matches "Public Single Room" or "Private Room"
    if (selectedValue === 'Public Single Room' || selectedValue === 'Private Room') {
        inRoomServiceDiv.style.display = 'block'; // Show the div
    } else {
        inRoomServiceDiv.style.display = 'none'; // Hide the div if not selected
    }
}

// Call toggleInRoomServiceSection() initially and on dropdown change
document.addEventListener('DOMContentLoaded', function () {
    toggleInRoomServiceSection(); // Call initially on page load
});

// Handle dropdown change event
var ddlStayPeriod = document.getElementById('<%= ddlStayPeriod.ClientID %>');
ddlStayPeriod.addEventListener('change', function () {
    toggleInRoomServiceSection(); // Call on dropdown selection change
});




// Function to toggle display of wifiServiceSection based on WiFi selection
function toggleWifiServiceSection() {
    var ddlWifiService = document.getElementById('<%= ddlWifiServeice.ClientID %>');
    var selectedValue = ddlWifiService.options[ddlWifiService.selectedIndex].value;

    // Get the div to display the wifiServiceSection
    var wifiServiceDiv = document.getElementById('wifiServiceSection');

    // Check if selected value is "WiFi"
    if (selectedValue === 'WiFi') {
        wifiServiceDiv.style.display = 'block'; // Show the div
    } else {
        wifiServiceDiv.style.display = 'none'; // Hide the div if not selected
    }
}

// Call toggleWifiServiceSection() initially and on dropdown change
document.addEventListener('DOMContentLoaded', function () {
    toggleWifiServiceSection(); // Call initially on page load
});

// Handle dropdown change event
var ddlWifiService = document.getElementById('<%= ddlWifiServeice.ClientID %>');
ddlWifiService.addEventListener('change', function () {
    toggleWifiServiceSection(); // Call on dropdown selection change
});