using System;
using System.IO;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filePath = Server.MapPath("~/App_Data");
        string courseFile = filePath + "\\course.dat";
        string studentFile = filePath + "\\student.dat";
        string facultyFile = filePath + "\\faculty.dat";
        string locationFile = filePath + "\\location.dat";
        string frankFile = filePath + "\\frank.dat";
        string termFile = filePath + "\\term.dat";
        string courseSectionFile = filePath + "\\course_section.dat";
        string enrollmentFile = filePath + "\\enrollment.dat";
        string stateFile = filePath + "\\state.dat";

        Response.Write(filePath);
        Response.Write("<br>" + courseFile);
        Response.Write("<br>" + studentFile);
        Response.Write("<br>" + facultyFile);
        Response.Write("<br>" + locationFile);
        Response.Write("<br>" + frankFile);
        Response.Write("<br>" + termFile);
        Response.Write("<br>" + courseSectionFile);
        Response.Write("<br>" + enrollmentFile);
        Response.Write("<br>" + stateFile);

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
            Console.WriteLine("The process failed: {0}", ex.ToString());
        }
    }

    protected void createSqlInsertStatements(string listboxId, string tableName)
    {
        ListBox listBox = (ListBox)FindControl(listboxId);
        string[] fields;
        string sqlInserts;
        for (int index = 0; index < listBox.Items.Count; index++)
        {
            Response.Write("<HR />");
            fields = listBox.Items[index].Text.Split(',');
            for (int fieldIndex = 0; fieldIndex < fields.Length; fieldIndex++)
            {
                Response.Write(fields[fieldIndex] + "<BR />");
            }
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
            Response.Write("<BR />" + sqlInserts);
        }
        Response.Write("<HR />");
    }

    protected void btnLoadCourse_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstCourse.ID, "Course");
    }
    protected void btnLoadStudent_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstStudent.ID, "Student");
    }
    protected void btnLoadFaculty_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstFaculty.ID, "Faculty");
    }
    protected void btnLoadLocation_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstLocation.ID, "Location");
    }
    protected void btnLoadFrank_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstFrank.ID, "Frank");
    }
    protected void btnLoadTerm_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstTerm.ID, "Term");
    }
    protected void btnLoadCourseSection_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstCourseSection.ID, "Course_Section");
    }
    protected void btnLoadEnrollment_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstEnrollment.ID, "Enrollment");
    }
    protected void btnLoadState_Click(object sender, EventArgs e)
    {
        createSqlInsertStatements(lstState.ID, "State");
    }
}
