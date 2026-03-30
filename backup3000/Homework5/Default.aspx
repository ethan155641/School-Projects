<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Ashland Soccer</title>
    <style>
        .banner {
            font-size: 2em;
            font-weight: bold;
            color: #2E8B57;
            margin-bottom: 20px;
        }
        .dropdown-label {
            font-weight: bold;
            margin-right: 5px;
        }
        .dropdown-section {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="banner">Ashland Soccer - Parks and Rec</div>
            <asp:Label ID="lblErrorMessage" runat="server" BorderStyle="None" ForeColor="Red" />
            <br />
            <div class="dropdown-section">
                <span class="dropdown-label">Field:</span>
                <asp:DropDownList ID="ddField" runat="server" />
                <asp:ListBox ID="lbField" runat="server" Visible="true" />
            </div>
            <div class="dropdown-section">
                <span class="dropdown-label">Team Name:</span>
                <asp:DropDownList ID="ddTeam" runat="server" />
                <asp:ListBox ID="lbTeam" runat="server" Visible="true" />
            </div>
            <div class="dropdown-section">
                <span class="dropdown-label">Status:</span>
                <asp:DropDownList ID="ddStatus" runat="server" />
                <asp:ListBox ID="lbStatus" runat="server" Visible="true" />
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <br /><br />
            <asp:GridView ID="gvDisplay" runat="server" />
        </div>
    </form>
</body>
</html>