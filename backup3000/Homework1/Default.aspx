<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Homework 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Course Controls -->
            <asp:Button ID="btnCreateCourse" runat="server" Text="Create Course" />
            <asp:Button ID="btnLoadCourse" runat="server" Text="Load Course" OnClick="btnLoadCourse_Click" />
            <asp:Button ID="btnViewCourse" runat="server" Text="View Course" />
            <asp:Button ID="btnDeleteCourse" runat="server" Text="Delete Course" />
            <asp:ListBox ID="lstCourse" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Student Controls -->
            <asp:Button ID="btnCreateStudent" runat="server" Text="Create Student" />
            <asp:Button ID="btnLoadStudent" runat="server" Text="Load Student" OnClick="btnLoadStudent_Click" />
            <asp:Button ID="btnViewStudent" runat="server" Text="View Student" />
            <asp:Button ID="btnDeleteStudent" runat="server" Text="Delete Student" />
            <asp:ListBox ID="lstStudent" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Faculty Controls -->
            <asp:Button ID="btnCreateFaculty" runat="server" Text="Create Faculty" />
            <asp:Button ID="btnLoadFaculty" runat="server" Text="Load Faculty" OnClick="btnLoadFaculty_Click" />
            <asp:Button ID="btnViewFaculty" runat="server" Text="View Faculty" />
            <asp:Button ID="btnDeleteFaculty" runat="server" Text="Delete Faculty" />
            <asp:ListBox ID="lstFaculty" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Location Controls -->
            <asp:Button ID="btnCreateLocation" runat="server" Text="Create Location" />
            <asp:Button ID="btnLoadLocation" runat="server" Text="Load Location" OnClick="btnLoadLocation_Click" />
            <asp:Button ID="btnViewLocation" runat="server" Text="View Location" />
            <asp:Button ID="btnDeleteLocation" runat="server" Text="Delete Location" />
            <asp:ListBox ID="lstLocation" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Frank Controls -->
            <asp:Button ID="btnCreateFrank" runat="server" Text="Create Frank" />
            <asp:Button ID="btnLoadFrank" runat="server" Text="Load Frank" OnClick="btnLoadFrank_Click" />
            <asp:Button ID="btnViewFrank" runat="server" Text="View Frank" />
            <asp:Button ID="btnDeleteFrank" runat="server" Text="Delete Frank" />
            <asp:ListBox ID="lstFrank" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Term Controls -->
            <asp:Button ID="btnCreateTerm" runat="server" Text="Create Term" />
            <asp:Button ID="btnLoadTerm" runat="server" Text="Load Term" OnClick="btnLoadTerm_Click" />
            <asp:Button ID="btnViewTerm" runat="server" Text="View Term" />
            <asp:Button ID="btnDeleteTerm" runat="server" Text="Delete Term" />
            <asp:ListBox ID="lstTerm" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Course Section Controls -->
            <asp:Button ID="btnCreateCourseSection" runat="server" Text="Create Course Section" />
            <asp:Button ID="btnLoadCourseSection" runat="server" Text="Load Course Section" OnClick="btnLoadCourseSection_Click" />
            <asp:Button ID="btnViewCourseSection" runat="server" Text="View Course Section" />
            <asp:Button ID="btnDeleteCourseSection" runat="server" Text="Delete Course Section" />
            <asp:ListBox ID="lstCourseSection" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- Enrollment Controls -->
            <asp:Button ID="btnCreateEnrollment" runat="server" Text="Create Enrollment" />
            <asp:Button ID="btnLoadEnrollment" runat="server" Text="Load Enrollment" OnClick="btnLoadEnrollment_Click" />
            <asp:Button ID="btnViewEnrollment" runat="server" Text="View Enrollment" />
            <asp:Button ID="btnDeleteEnrollment" runat="server" Text="Delete Enrollment" />
            <asp:ListBox ID="lstEnrollment" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
            <!-- State Controls -->
            <asp:Button ID="btnCreateState" runat="server" Text="Create State" />
            <asp:Button ID="btnLoadState" runat="server" Text="Load State" OnClick="btnLoadState_Click" />
            <asp:Button ID="btnViewState" runat="server" Text="View State" />
            <asp:Button ID="btnDeleteState" runat="server" Text="Delete State" />
            <asp:ListBox ID="lstState" runat="server" SelectionMode="Multiple" Height="150px" Width="300px" />
            <br />
        </div>
    </form>
</body>
</html>
