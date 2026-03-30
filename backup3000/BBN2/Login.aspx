<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
	<style type="text/css">
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Enter your ownerID:</td>
                <td><asp:TextBox ID="txtOwnerID" runat="server" /></td>
            </tr>
            <tr>
                <td>Re-enter ownerID:</td>
                <td><asp:TextBox ID="txtOwnerID0" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
