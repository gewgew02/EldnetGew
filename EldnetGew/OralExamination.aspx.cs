using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

//ELDNET SUMMER - DELA TORRE, GAYLE MARIE
namespace EldnetGew
{
    public partial class OralExamination : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OESaveButton_Click(object sender, EventArgs e)
        {
            //TO SAVE sa ORALEXAMINIATIONHEADERFILE
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection registerConnection = new SqlConnection(connectionString);
            
            //insert
            string sql = "INSERT INTO ORALEXAMINIATIONHEADERFILE (OEHNO, OEHPCODE, OEHREMARKS,OEHCHARTTYPE) " +
                "VALUES (@oehNo, @oehPCode, @oehRemarks, @oehChartType)";
            Save();
            SqlCommand registerCommand = new SqlCommand(sql, registerConnection);
            registerConnection.Open();

            registerCommand.Parameters.AddWithValue("@oehNo", OENoTextBox.Text);
            registerCommand.Parameters.AddWithValue("@oehPCode", OEPCodeTextBox.Text);
            registerCommand.Parameters.AddWithValue("@oehRemarks", OERemarksTextBox.Text);            
            registerCommand.Parameters.AddWithValue("@oehChartType", RBLChatType.SelectedItem.Text);

            int rowsAffected = registerCommand.ExecuteNonQuery();

            if (rowsAffected > 0)
                Response.Write("<script>alert('Record Added in OE HEADER FILE!')</script>");
            
            registerConnection.Close();
        }

        protected void Save()
        {
            //TO SAVE sa ORALEXAMINIATIONDETAILFILE
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection registerConnection = new SqlConnection(connectionString);

            //insert
            string sql2 = "INSERT INTO ORALEXAMINIATIONDETAILFILE (OEDNO) VALUES (@oedNo)";
            SqlCommand registerCommand = new SqlCommand(sql2, registerConnection);
            registerConnection.Open();

            registerCommand.Parameters.AddWithValue("@oedNo", OENoTextBox.Text);
            int rowsAffected = registerCommand.ExecuteNonQuery();

            if (rowsAffected > 0)
                Response.Write("<script>alert('Record Added in OE DETAIL FILE!')</script>");

            registerConnection.Close();
        }

        protected void OEClearButton_Click(object sender, EventArgs e)
        {
            OENoTextBox.Text = " ";
            OEPCodeTextBox.Text = " ";
            OENameTextBox.Text = " ";
            OEDateTextBox.Text = " ";
            OERemarksTextBox.Text = " ";
            TCodeTextBox.Text = " ";
            CCodeTextBox.Text = " ";
            SCodeTextBox.Text = " ";
            RBLChatType.ClearSelection();
        }

        protected void OEBackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void DisplayButton_Click(object sender, EventArgs e)
        {
            //TO SEARCH SA PATIENTINFOFILE
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection registerConnection = new SqlConnection(connectionString);

            //query
            string query = "SELECT * FROM PATIENTINFOFILE WHERE PICODE =@piCode";
            SqlCommand registerCommand = registerConnection.CreateCommand();
            registerCommand.CommandText = query;
            
            SqlParameter param = new SqlParameter("@piCode", OEPCodeTextBox.Text);
            registerCommand.Parameters.Add(param);
            try
            {
                registerConnection.Open();
                SqlDataReader registerReader = registerCommand.ExecuteReader();

                while (registerReader.Read())
                {
                    OENameTextBox.Text = registerReader["PINAME"].ToString();        
                    Display();       
                }
                registerReader.Close();
                registerConnection.Close();
            }
            catch
            {
                Response.Write("<script>alert('Error!')</script>");
            }
        }

        protected void Display()
        {
            //TO SEARCH SA ORALEXAMINIATIONHEADERFILE
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection registerConnection = new SqlConnection(connectionString);

            //query
            string query = "SELECT * FROM ORALEXAMINIATIONHEADERFILE WHERE OEHPCODE =@oehCode";
            SqlCommand registerCommand = registerConnection.CreateCommand();
            registerCommand.CommandText = query;

            SqlParameter param = new SqlParameter("@oehCode", OEPCodeTextBox.Text);
            registerCommand.Parameters.Add(param);
            try
            {
                registerConnection.Open();
                SqlDataReader registerReader = registerCommand.ExecuteReader();

                while (registerReader.Read())
                {
                    OERemarksTextBox.Text= registerReader["OEHREMARKS"].ToString();
                    RBLChatType.Text = registerReader["OEHCHARTTYPE"].ToString();
                    //OEDateTextBox.Text = registerReader["OEHDATE"].ToString();
                    OEDateTextBox.Text = DateTime.Now.ToString("dddd, dd MMMM yyyy");
                    //DateTime now = DateTime.Now;
                    //OEDateTextBox();
                }
                registerReader.Close();
                registerConnection.Close();
            }
            catch
            {
                Response.Write("<script>alert('Error!')</script>");
            }
        }

        protected void TCodeButton_Click(object sender, EventArgs e)
        {

        }

        protected void CCodeButton_Click(object sender, EventArgs e)
        {

        }

        protected void SCodeButton_Click(object sender, EventArgs e)
        {

        }
    }
}