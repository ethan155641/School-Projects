<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Hocus Pocus Set the Focus</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblWelcome" runat="server" Text="Welcome to the Website!" Font-Size="Large" Font-Bold="True" />
            <br /><br />
            <asp:Button ID="btnReset" runat="server" Text="Reset" />
            <br /><br />
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" />
            <asp:GridView ID="gvDisplay" runat="server" Visible="false" />
            <hr />
            <!-- Show file paths for debugging -->
            <asp:Label ID="lblFilePaths" runat="server" />
            <hr />
            <!-- Course Controls -->
            <asp:Button ID="btnCreateCourse" runat="server" Text="Create Course" OnClick="btnCreateCourse_Click" />
            <asp:Button ID="btnLoadCourse" runat="server" Text="Load Course" OnClick="btnLoadCourse_Click" />
            <asp:Button ID="btnViewCourse" runat="server" Text="View Course" OnClick="btnViewCourse_Click" />
            <asp:Button ID="btnDeleteCourse" runat="server" Text="Delete Course" OnClick="btnDeleteCourse_Click" />
            <asp:ListBox ID="lstCourse" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Student Controls -->
            <asp:Button ID="btnCreateStudent" runat="server" Text="Create Student" OnClick="btnCreateStudent_Click" />
            <asp:Button ID="btnLoadStudent" runat="server" Text="Load Student" OnClick="btnLoadStudent_Click" />
            <asp:Button ID="btnViewStudent" runat="server" Text="View Student" OnClick="btnViewStudent_Click" />
            <asp:Button ID="btnDeleteStudent" runat="server" Text="Delete Student" OnClick="btnDeleteStudent_Click" />
            <asp:ListBox ID="lstStudent" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Faculty Controls -->
            <asp:Button ID="btnCreateFaculty" runat="server" Text="Create Faculty" OnClick="btnCreateFaculty_Click" />
            <asp:Button ID="btnLoadFaculty" runat="server" Text="Load Faculty" OnClick="btnLoadFaculty_Click" />
            <asp:Button ID="btnViewFaculty" runat="server" Text="View Faculty" OnClick="btnViewFaculty_Click" />
            <asp:Button ID="btnDeleteFaculty" runat="server" Text="Delete Faculty" OnClick="btnDeleteFaculty_Click" />
            <asp:ListBox ID="lstFaculty" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Location Controls -->
            <asp:Button ID="btnCreateLocation" runat="server" Text="Create Location" OnClick="btnCreateLocation_Click" />
            <asp:Button ID="btnLoadLocation" runat="server" Text="Load Location" OnClick="btnLoadLocation_Click" />
            <asp:Button ID="btnViewLocation" runat="server" Text="View Location" OnClick="btnViewLocation_Click" />
            <asp:Button ID="btnDeleteLocation" runat="server" Text="Delete Location" OnClick="btnDeleteLocation_Click" />
            <asp:ListBox ID="lstLocation" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Frank Controls -->
            <asp:Button ID="btnCreateFrank" runat="server" Text="Create Frank" OnClick="btnCreateFrank_Click" />
            <asp:Button ID="btnLoadFrank" runat="server" Text="Load Frank" OnClick="btnLoadFrank_Click" />
            <asp:Button ID="btnViewFrank" runat="server" Text="View Frank" OnClick="btnViewFrank_Click" />
            <asp:Button ID="btnDeleteFrank" runat="server" Text="Delete Frank" OnClick="btnDeleteFrank_Click" />
            <asp:ListBox ID="lstFrank" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Term Controls -->
            <asp:Button ID="btnCreateTerm" runat="server" Text="Create Term" OnClick="btnCreateTerm_Click" />
            <asp:Button ID="btnLoadTerm" runat="server" Text="Load Term" OnClick="btnLoadTerm_Click" />
            <asp:Button ID="btnViewTerm" runat="server" Text="View Term" OnClick="btnViewTerm_Click" />
            <asp:Button ID="btnDeleteTerm" runat="server" Text="Delete Term" OnClick="btnDeleteTerm_Click" />
            <asp:ListBox ID="lstTerm" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Course Section Controls -->
            <asp:Button ID="btnCreateCourseSection" runat="server" Text="Create Course Section" OnClick="btnCreateCourseSection_Click" />
            <asp:Button ID="btnLoadCourseSection" runat="server" Text="Load Course Section" OnClick="btnLoadCourseSection_Click" />
            <asp:Button ID="btnViewCourseSection" runat="server" Text="View Course Section" OnClick="btnViewCourseSection_Click" />
            <asp:Button ID="btnDeleteCourseSection" runat="server" Text="Delete Course Section" OnClick="btnDeleteCourseSection_Click" />
            <asp:ListBox ID="lstCourseSection" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Enrollment Controls -->
            <asp:Button ID="btnCreateEnrollment" runat="server" Text="Create Enrollment" OnClick="btnCreateEnrollment_Click" />
            <asp:Button ID="btnLoadEnrollment" runat="server" Text="Load Enrollment" OnClick="btnLoadEnrollment_Click" />
            <asp:Button ID="btnViewEnrollment" runat="server" Text="View Enrollment" OnClick="btnViewEnrollment_Click" />
            <asp:Button ID="btnDeleteEnrollment" runat="server" Text="Delete Enrollment" OnClick="btnDeleteEnrollment_Click" />
            <asp:ListBox ID="lstEnrollment" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- State Controls -->
            <asp:Button ID="btnCreateState" runat="server" Text="Create State" OnClick="btnCreateState_Click" />
            <asp:Button ID="btnLoadState" runat="server" Text="Load State" OnClick="btnLoadState_Click" />
            <asp:Button ID="btnViewState" runat="server" Text="View State" OnClick="btnViewState_Click" />
            <asp:Button ID="btnDeleteState" runat="server" Text="Delete State" OnClick="btnDeleteState_Click" />
            <asp:ListBox ID="lstState" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
        </div>
    </form>
</body>
</html>