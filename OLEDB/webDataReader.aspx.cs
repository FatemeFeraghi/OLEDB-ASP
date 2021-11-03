using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;//Adding FireBase by NudGetPachages(Connect to DB)

namespace OLEDB
{
    public partial class webDataReader : System.Web.UI.Page
    {
        //static: To avoid creating any object from the connection class(Avoid any modification)
        static OleDbConnection myConnection;

        //Queries
        OleDbCommand myCommand;

        //Return data
        OleDbDataReader readStudents;

        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source =" + Server.MapPath("~/App_Data/College.mdb"));
            myConnection.Open();

            myCommand = new OleDbCommand("SELECT Number, RefCourse FROM Courses Order by [Number]", myConnection);
            //Execute DataReader
            readStudents = myCommand.ExecuteReader();

            ListBoxCourse.DataTextField = "Number";
            ListBoxCourse.DataValueField = "RefCourse";
            ListBoxCourse.DataSource = readStudents;
            ListBoxCourse.DataBind();

            //@ means start sql
            //Test the connection with hard coding!
            string sql = "SELECT * FROM Courses WHERE Teacher=@teach and Duration <@dur ";
            OleDbCommand myCommandTest = new OleDbCommand(sql, myConnection);
            OleDbParameter myParam = new OleDbParameter("teach", "Houria Houmel");
            myParam.DbType = System.Data.DbType.String;

            myCommandTest.Parameters.Add(myParam);
            myCommandTest.Parameters.AddWithValue("dur", 50);

            OleDbDataReader rdTest = myCommandTest.ExecuteReader();
            gridTest.DataSource = rdTest;
            gridTest.DataBind();

        }

        protected void ListBoxCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            myCommand = new OleDbCommand("SELECT * FROM Courses WHERE RefCourse=@ref", myConnection);
            myCommand.Parameters.AddWithValue("ref", ListBoxCourse.SelectedItem.Value);

            readStudents = myCommand.ExecuteReader();

            //if (readStudents.Read())
            //{
            //    TextBoxNumber.Text = readStudents["Number"].ToString();
            //}

            //readStudents.Close();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}