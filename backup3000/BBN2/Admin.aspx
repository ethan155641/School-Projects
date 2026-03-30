<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bob's BookNook Admin Page</title>
    <style type="text/css">
        td {
            vertical-align: top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%">
            <tr>
                <td rowspan="2">
                    <asp:ListBox ID="lstProgress" runat="server" Width="200px" Height="350px" Visible="true" />
                </td>
                <td>
                    Your Software OwnerID<br />
                    <asp:TextBox ID="txtOwnerID" runat="server" Enabled="false" />
                    <asp:Button ID="btnResetUser" runat="server" Text="Reset User" OnClick="btnResetUser_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewInventory" runat="server" Text="View Inventory" OnClick="btnViewInventory_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    If you click [Clear Database] you will have to reload all xml and jpg files<br />
                    <asp:Button ID="btnClearDB" runat="server" Text="Clear Database" BackColor="Red" ForeColor="Yellow" OnClick="btnClearDatabase_Click" /><br />
                    Browse for and select BookJacket images, then Click [Load Images]<br />
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                    <asp:Button ID="btnLoadImages" runat="server" Text="Load Images" OnClick="btnLoadImages_Click" /><br />
                    Browse for BookInventory.xml file, then click [Import Book Data]<br />
                    <asp:FileUpload ID="FileUpload2" runat="server" /><br />
                    <asp:Button ID="btnLoadXML" runat="server" Text="Import Book Data" OnClick="btnLoadXML_Click" /><br />
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="gvDisplay" runat="server" AutoGenerateColumns="False" Visible="false">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# (string) FormatImageUrl((string) Eval("Image")) %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Author" HeaderText="Author" />
                            <asp:BoundField DataField="Category" HeaderText="Category" />
                            <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:ListBox ID="lstHidden" runat="server" Visible="false" Width="800px" />
    </form>
</body>
</html>
