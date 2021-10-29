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
        }

        protected void ListBoxCourse_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}