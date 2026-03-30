using System;
using System.IO;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public class myDatabaseConnection
{
    public static SqlConnection myConnection = new SqlConnection(
        "Data Source=SQL5025.myWindowsHosting.com;" +
        "Initial Catalog=DB_A28DC6_mccSupport;" +
        "User Id=DB_A28DC6_mccSupport_admin;" +
        "Password=passw0rd;");

    public myDatabaseConnection() { }

    public static void executeSQL(string sqlCommand, ref GridView gvDisplay, ref Label lblErrorMessage)
    {
        gvDisplay.Visible = false;
        lblErrorMessage.Text = "";
        try
        {
            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(sqlCommand, myConnection);
            try
            {
                if (sqlCommand.StartsWith("SELECT"))
                {
                    gvDisplay.DataSource = myCommand.ExecuteReader();
                    gvDisplay.DataBind();
                    gvDisplay.Visible = true;
                }
                else
                {
                    myCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.ToString();
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = ex.ToString();
        }
        try
        {
            myConnection.Close();
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = ex.ToString();
        }
    }
}

public partial class _Default : System.Web.UI.Page
{
    string userID = "Elanfear_"; 

    // File path variables
    string filePath, courseFile, studentFile, facultyFile, locationFile, frankFile, termFile, courseSectionFile, enrollmentFile, stateFile;

    protected void Page_Load(object sender, EventArgs e)
    {
        filePath = Server.MapPath("~/App_Data");
        courseFile = filePath + "\\course.dat";
        studentFile = filePath + "\\student.dat";
        facultyFile = filePath + "\\faculty.dat";
        locationFile = filePath + "\\location.dat";
        frankFile = filePath + "\\frank.dat";
        termFile = filePath + "\\term.dat";
        courseSectionFile = filePath + "\\course_section.dat";
        enrollmentFile = filePath + "\\enrollment.dat";
        stateFile = filePath + "\\state.dat";

        // Show file paths for debugging
        lblFilePaths.Text =
            "App_Data: " + filePath + "<br>" +
            "Course: " + courseFile + "<br>" +
            "Student: " + studentFile + "<br>" +
            "Faculty: " + facultyFile + "<br>" +
            "Location: " + locationFile + "<br>" +
            "Frank: " + frankFile + "<br>" +
            "Term: " + termFile + "<br>" +
            "CourseSection: " + courseSectionFile + "<br>" +
            "Enrollment: " + enrollmentFile + "<br>" +
            "State: " + stateFile;

        if (!IsPostBack)
        {
            readData(courseFile, lstCourse);
            readData(studentFile, lstStudent);
            readData(facultyFile, lstFaculty);
            readData(locationFile, lstLocation);
            readData(frankFile, lstFrank);
            readData(termFile, lstTerm);
            readData(courseSectionFile, lstCourseSection);
            readData(enrollmentFile, lstEnrollment);
            readData(stateFile, lstState);
        }
        gvDisplay.Visible = false;
        lblErrorMessage.Text = "";
    }

    void readData(string fileName, ListBox listBoxName)
    {
        try
        {
            if (File.Exists(fileName))
            {
                using (StreamReader sr = new StreamReader(fileName))
                {
                    while (sr.Peek() >= 0)
                    {
                        listBoxName.Items.Add(sr.ReadLine());
                    }
                }
            }
        }
        catch (Exception ex)
        {
            // Optionally log error
        }
    }

    private void checkForError()
    {
        if (lblErrorMessage.Text == "")
        {
            lblErrorMessage.Text = "Command Complete";
        }
    }

    private void changeColor(Button button, int flag)
    {
        switch (flag)
        {
            case 0:
                button.BackColor = System.Drawing.Color.White;
                button.Enabled = false;
                break;
            case 1:
                button.BackColor = System.Drawing.Color.SkyBlue;
                button.Enabled = true;
                break;
        }
    }

    protected void changeColor(string rootID, int bCFlag, int bLFlag, int bVFlag, int bDFlag)
    {
        string bC = "btnCreate" + rootID;
        string bL = "btnLoad" + rootID;
        string bV = "btnView" + rootID;
        string bD = "btnDelete" + rootID;
        Button button;
        button = (Button)FindControl(bC);
        changeColor(button, bCFlag);
        button = (Button)FindControl(bL);
        changeColor(button, bLFlag);
        button = (Button)FindControl(bV);
        changeColor(button, bVFlag);
        button = (Button)FindControl(bD);
        changeColor(button, bDFlag);
    }

    protected void btnCreateCourse_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "COURSE(COURSEID INTEGER UNIQUE, CALL_ID CHAR(8), COURSE_NAME CHAR(30), CREDITS INTEGER)";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Course", 0, 1, 0, 0);
    }

    protected void btnCreateStudent_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "STUDENT (SID INTEGER UNIQUE, SLNAME CHAR(15), SFNAME CHAR(15), SMI CHAR(2), SADD CHAR(30), SCITY CHAR(20), SSTATE CHAR(2), SZIP CHAR(10), SPHONE CHAR(14), SDOB DATE, SCLASS CHAR(2), SPIN INTEGER, FID INTEGER)";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Student", 0, 1, 0, 0);
    }

    protected void btnCreateFaculty_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "FACULTY (FID INTEGER UNIQUE, FLNAME CHAR(15), FFNAME CHAR(15), FMI CHAR(2), LOCID INTEGER, FPHONE CHAR(14), FRANK CHAR(5), FPIN INTEGER, FIMAGE CHAR(20))";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Faculty", 0, 1, 0, 0);
    }

    protected void btnCreateLocation_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "LOCATION(LOCID INTEGER UNIQUE, BLDG_CODE CHAR(4), ROOM CHAR(4), CAPACITY INTEGER)";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Location", 0, 1, 0, 0);
    }

    protected void btnCreateFrank_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "FRANK (FRANK CHAR(5) UNIQUE, FRANKDESC CHAR(15))";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Frank", 0, 1, 0, 0);
    }

    protected void btnCreateTerm_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "TERM(TERMID INTEGER, TERM_DESC CHAR(12), STATUS CHAR (7))";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Term", 0, 1, 0, 0);
    }

    protected void btnCreateCourseSection_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "COURSE_SECTION(CSEC_ID INTEGER UNIQUE, COURSEID INTEGER, TERMID INTEGER,SEC_NUM INTEGER, FID INTEGER, CSEC_DAY CHAR(6), CSEC_TIME DATE, LOCID INTEGER, MAX_ENRL INTEGER)";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("CourseSection", 0, 1, 0, 0);
    }

    protected void btnCreateEnrollment_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "ENROLLMENT (SID INTEGER, CSEC_ID INTEGER, GRADE CHAR(2), CONSTRAINT " + userID + "ENROLLMENT_UN UNIQUE (SID, CSEC_ID))";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("Enrollment", 0, 1, 0, 0);
    }

    protected void btnCreateState_Click(object sender, EventArgs e)
    {
        string sqlCommand = "CREATE TABLE " + userID + "STATE (S_ABBREVIATION CHAR(3) UNIQUE, S_NAME CHAR(100))";
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
        changeColor("State", 0, 1, 0, 0);
    }

    protected void btnLoadStudent_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstStudent.ID, userID + "STUDENT");
        changeColor("Student", 0, 0, 1, 1);
    }

    protected void btnLoadFaculty_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstFaculty.ID, userID + "FACULTY");
        changeColor("Faculty", 0, 0, 1, 1);
    }

    protected void btnLoadLocation_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstLocation.ID, userID + "LOCATION");
        changeColor("Location", 0, 0, 1, 1);
    }

    protected void btnLoadFrank_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstFrank.ID, userID + "FRANK");
        changeColor("Frank", 0, 0, 1, 1);
    }

    protected void btnLoadTerm_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstTerm.ID, userID + "TERM");
        changeColor("Term", 0, 0, 1, 1);
    }

    protected void btnLoadCourseSection_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstCourseSection.ID, userID + "COURSE_SECTION");
        changeColor("CourseSection", 0, 0, 1, 1);
    }

    protected void btnLoadEnrollment_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstEnrollment.ID, userID + "ENROLLMENT");
        changeColor("Enrollment", 0, 0, 1, 1);
    }

    protected void btnLoadState_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstState.ID, userID + "STATE");
        changeColor("State", 0, 0, 1, 1);
    }

    protected void btnDeleteStudent_Click(object sender, EventArgs e)
    {
        dropTable("STUDENT");
        changeColor("Student", 1, 0, 0, 0);
    }

    protected void btnDeleteFaculty_Click(object sender, EventArgs e)
    {
        dropTable("FACULTY");
        changeColor("Faculty", 1, 0, 0, 0);
    }

    protected void btnDeleteLocation_Click(object sender, EventArgs e)
    {
        dropTable("LOCATION");
        changeColor("Location", 1, 0, 0, 0);
    }

    protected void btnDeleteFrank_Click(object sender, EventArgs e)
    {
        dropTable("FRANK");
        changeColor("Frank", 1, 0, 0, 0);
    }

    protected void btnDeleteTerm_Click(object sender, EventArgs e)
    {
        dropTable("TERM");
        changeColor("Term", 1, 0, 0, 0);
    }

    protected void btnDeleteCourseSection_Click(object sender, EventArgs e)
    {
        dropTable("COURSE_SECTION");
        changeColor("CourseSection", 1, 0, 0, 0);
    }

    protected void btnDeleteEnrollment_Click(object sender, EventArgs e)
    {
        dropTable("ENROLLMENT");
        changeColor("Enrollment", 1, 0, 0, 0);
    }

    protected void btnDeleteState_Click(object sender, EventArgs e)
    {
        dropTable("STATE");
        changeColor("State", 1, 0, 0, 0);
    }

    private void dropTable(string tableName)
    {
        string sqlCommand = "DROP TABLE " + userID + tableName;
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
        checkForError();
    }

    protected void createSqlInsertStatements(string listboxId, string tableName)
    {
        ListBox listBox = (ListBox)FindControl(listboxId);
        string[] fields;
        string sqlInserts;
        for (int index = 0; index < listBox.Items.Count; index++)
        {
            fields = listBox.Items[index].Text.Split(',');
            sqlInserts = "INSERT INTO " + tableName + " VALUES (";
            for (int fieldIndex = 0; fieldIndex < fields.Length; fieldIndex++)
            {
                string currentField = fields[fieldIndex];
                int tempResult;
                if (Int32.TryParse(currentField, out tempResult))
                {
                    sqlInserts += currentField;
                }
                else
                {
                    sqlInserts += "'" + currentField + "'";
                }
                sqlInserts += (fieldIndex < fields.Length - 1) ? ", " : ")";
            }
            myDatabaseConnection.executeSQL(sqlInserts, ref gvDisplay, ref lblErrorMessage);
            checkForError();
        }
    }

    protected void btnLoadCourse_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstCourse.ID, userID + "COURSE");
        changeColor("Course", 0, 0, 1, 1);
    }

    private void viewTable(string tableName)
    {
        string sqlCommand = "SELECT * FROM " + userID + tableName;
        myDatabaseConnection.executeSQL(sqlCommand, ref gvDisplay, ref lblErrorMessage);
    }

    protected void btnViewCourse_Click(object sender, EventArgs e)
    {
        viewTable("COURSE");
    }
    protected void btnViewStudent_Click(object sender, EventArgs e)
    {
        viewTable("STUDENT");
    }
    protected void btnViewFaculty_Click(object sender, EventArgs e)
    {
        viewTable("FACULTY");
    }
    protected void btnViewLocation_Click(object sender, EventArgs e)
    {
        viewTable("LOCATION");
    }
    protected void btnViewFrank_Click(object sender, EventArgs e)
    {
        viewTable("FRANK");
    }
    protected void btnViewTerm_Click(object sender, EventArgs e)
    {
        viewTable("TERM");
    }
    protected void btnViewCourseSection_Click(object sender, EventArgs e)
    {
        viewTable("COURSE_SECTION");
    }
    protected void btnViewEnrollment_Click(object sender, EventArgs e)
    {
        viewTable("ENROLLMENT");
    }
    protected void btnViewState_Click(object sender, EventArgs e)
    {
        viewTable("STATE");
    }

    protected void btnDeleteCourse_Click(object sender, EventArgs e)
    {
        dropTable("COURSE");
        changeColor("Course", 1, 0, 0, 0);
    }
}