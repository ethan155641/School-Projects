using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public class myDatabaseConnection
{

    public static SqlConnection myConnection = new SqlConnection(
        "Data Source=SQL5025.myWindowsHosting.com;" +
        "Initial Catalog=DB_A28DC6_mccSupport;" +
        "User Id=DB_A28DC6_mccSupport_admin;" +
        "Password=passw0rd;"
            );

    public myDatabaseConnection()
    {

    }


    public static void executeSQL(string sqlCommand, ref GridView gvDisplay, ref Label lblErrorMessage)
    {

        gvDisplay.Visible = false;
        lblErrorMessage.Text = "";

        try /
        {

            myConnection.Open(); 
            SqlCommand myCommand = new SqlCommand("Command String", myConnection);

            myCommand.CommandText = sqlCommand;
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
        dropdownId.Items.Add("*");

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