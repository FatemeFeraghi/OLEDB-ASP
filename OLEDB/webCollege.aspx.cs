using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace OLEDB
{
    public partial class webCollege : System.Web.UI.Page
    {
        static OleDbConnection myConnection;
        OleDbCommand myCommand;
        OleDbDataReader readSchools;
        OleDbDataReader readPrograms;
        OleDbDataReader readCourses;
        OleDbDataReader readStudents;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                myConnection = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/College2.mdb"));
                myConnection.Open();

                myCommand = new OleDbCommand("SELECT refSchool, Title FROM Schools ORDER BY Title", myConnection);
                readSchools = myCommand.ExecuteReader();

                radlistSchool.DataTextField = "Title";
                radlistSchool.DataValueField = "refSchool";
                radlistSchool.DataSource = readSchools;
                radlistSchool.DataBind();
            }

        }

        protected void radlistSchool_SelectedIndexChanged(object sender, EventArgs e)
        {
            myCommand = new OleDbCommand("SELECT refProgram, [Title] FROM Programs WHERE referSchool=@refSchool", myConnection);
            myCommand.Parameters.AddWithValue("refSchool", radlistSchool.SelectedItem.Value);

            readPrograms = myCommand.ExecuteReader();

            radlstPrograms.DataTextField = "Title";
            radlstPrograms.DataValueField = "refProgram";
            radlstPrograms.DataSource = readPrograms;
            radlstPrograms.DataBind();
        }

        protected void radlstPrograms_SelectedIndexChanged(object sender, EventArgs e)
        {
            myCommand = new OleDbCommand("SELECT RefCourse, [Number] FROM Courses WHERE referProgram=@refProgram", myConnection);
            myCommand.Parameters.AddWithValue("refProgram", radlstPrograms.SelectedItem.Value);

            readCourses = myCommand.ExecuteReader();

            chklstCourses.DataTextField = "Number";
            chklstCourses.DataValueField = "RefCourse";
            chklstCourses.DataSource = readCourses;
            chklstCourses.DataBind();
        }

        protected void chklstCourses_SelectedIndexChanged(object sender, EventArgs e)
        {
            myCommand = new OleDbCommand("SELECT * FROM Students WHERE ReferCourse=@refCourse", myConnection);
            myCommand.Parameters.AddWithValue("refCourse", chklstCourses.SelectedItem.Value);

            readStudents = myCommand.ExecuteReader();

            if (readStudents.Read())
            {
                chklstCourses.DataTextField = "Number";
                chklstCourses.DataValueField = "RefCourse";
            }

            readStudents.Close();

            myCommand.CommandText = "SELECT StudentName as [Names], BirthDate as [Birth Dates], Telephone, Average, Email from Students WHERE ReferCourse =@ref";

            readStudents = myCommand.ExecuteReader();
            gridStudents.DataSource = readStudents;
            gridStudents.DataBind();
        }

        protected void gridStudents_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}