<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Info Validation</title>
    <style type="text/css">
        #buttonDiv {
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRegistration" runat="server" Text="Registration Page" Font-Size="Large" Font-Bold="True" />
            <br /><br />
            <table class="auto-style1" border="1" cellpadding="1" cellspacing="1">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Enter Email:" /></td>
                    <td><asp:TextBox ID="txtEMail1" runat="server" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Re-enter Email:" /></td>
                    <td><asp:TextBox ID="txtEMail2" runat="server" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Enter DOB (MM/DD/YYYY):" /></td>
                    <td><asp:TextBox ID="txtDOB1" runat="server" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Re-enter DOB (MM/DD/YYYY):" /></td>
                    <td><asp:TextBox ID="txtDOB2" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div id="buttonDiv">
                            <asp:Button ID="btnSubmit" runat="server" Text="Validate" OnClick="btnSubmit_Click" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
