using System;
using System.Web.UI.WebControls;
using System.Data;
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

    public static void fillDropDownList(DropDownList dropdownId, ListBox listboxId, string tableName, string field, string index, ref Label lblErrorMessage)
    {
        dropdownId.Items.Clear();
        dropdownId.Items.Add("*");
        listboxId.Items.Clear();
        DataRow dr;
        DataTable dt = new DataTable();
        string sqlCommand = "SELECT " + field + ", " + index + " FROM " + tableName + " ORDER BY " + field;
        try
        {
            myConnection.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlCommand, myConnection);
            da.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dr = dt.Rows[i];
                dropdownId.Items.Add(dr[field].ToString());
                listboxId.Items.Add(dr[index].ToString());
            }
            dropdownId.SelectedIndex = 0;
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = ex.ToString();
        }
        finally
        {
            try { myConnection.Close(); } catch { }
        }
    }
}

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Text = "";
        string sqlStatement;
        if (!IsPostBack)
        {
            myDatabaseConnection.fillDropDownList(ddTeam, lbTeam, "TEAMNAME", "TEAM_NAME", "TEAM_NO", ref lblErrorMessage);
            myDatabaseConnection.fillDropDownList(ddField, lbField, "FIELDS", "FIELD_NAME", "FIELD", ref lblErrorMessage);
            myDatabaseConnection.fillDropDownList(ddStatus, lbStatus, "STATUS", "FULL_STATUS", "STATUS", ref lblErrorMessage);
        }
        sqlStatement = "SELECT DATES.PLAY_DATE, GAMETIME.GAME_TIME, FIELDS.FIELD_NAME, TEAMNAME.TEAM_NAME, TEAMS_1.TEAM_NAME, STATUS.FULL_STATUS";
        sqlStatement += " from SCHEDULE, DATES, GAMETIME, FIELDS, STATUS, TEAMNAME, TEAMNAME AS TEAMS_1";
        sqlStatement += " WHERE DATES.WEEK = SCHEDULE.WEEK";
        sqlStatement += " AND GAMETIME.TIME_SLOT = SCHEDULE.TIME_SLOT";
        sqlStatement += " AND FIELDS.FIELD = SCHEDULE.FIELD";
        sqlStatement += " AND STATUS.STATUS = SCHEDULE.STATUS";
        sqlStatement += " AND TEAMNAME.TEAM_NO = SCHEDULE.HOME";
        sqlStatement += " AND TEAMS_1.TEAM_NO = SCHEDULE.VISITOR";
        sqlStatement += " ORDER BY SCHEDULE.WEEK";
        myDatabaseConnection.executeSQL(sqlStatement, ref gvDisplay, ref lblErrorMessage);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblErrorMessage.Text = "";
        string sqlStatement;
        sqlStatement = "SELECT DATES.PLAY_DATE, GAMETIME.GAME_TIME, FIELDS.FIELD_NAME, TEAMNAME.TEAM_NAME, TEAMS_1.TEAM_NAME, STATUS.FULL_STATUS";
        sqlStatement += " from SCHEDULE, DATES, GAMETIME, FIELDS, STATUS, TEAMNAME, TEAMNAME AS TEAMS_1";
        sqlStatement += " WHERE DATES.WEEK = SCHEDULE.WEEK";
        sqlStatement += " AND GAMETIME.TIME_SLOT = SCHEDULE.TIME_SLOT";
        sqlStatement += " AND FIELDS.FIELD = SCHEDULE.FIELD";
        sqlStatement += " AND STATUS.STATUS = SCHEDULE.STATUS";
        sqlStatement += " AND TEAMNAME.TEAM_NO = SCHEDULE.HOME";
        sqlStatement += " AND TEAMS_1.TEAM_NO = SCHEDULE.VISITOR";
        // Filtering logic
        if (ddStatus.SelectedIndex > 0)
        {
            sqlStatement += " AND SCHEDULE.STATUS = '" + lbStatus.Items[ddStatus.SelectedIndex - 1] + "'";
        }
        if (ddField.SelectedIndex > 0)
        {
            sqlStatement += " AND SCHEDULE.FIELD = " + lbField.Items[ddField.SelectedIndex - 1];
        }
        if (ddTeam.SelectedIndex > 0)
        {
            sqlStatement += " AND (SCHEDULE.HOME = " + lbTeam.Items[ddTeam.SelectedIndex - 1] + " OR SCHEDULE.VISITOR = " + lbTeam.Items[ddTeam.SelectedIndex - 1] + ")";
        }
        sqlStatement += " ORDER BY SCHEDULE.WEEK";
        myDatabaseConnection.executeSQL(sqlStatement, ref gvDisplay, ref lblErrorMessage);
    }
}