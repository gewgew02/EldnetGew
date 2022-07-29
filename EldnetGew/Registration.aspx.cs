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
    public partial class Registration : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["GewEldnetConnectionString"].ConnectionString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();           
        }
        protected void LbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["DISCODE"].DefaultValue =
                ((TextBox)DiseaseGridView.FooterRow.FindControl("txtDisCode")).Text;
            SqlDataSource1.InsertParameters["DISNAME"].DefaultValue =
                ((TextBox)DiseaseGridView.FooterRow.FindControl("txtDisName")).Text;
            SqlDataSource1.InsertParameters["DISSTATUS"].DefaultValue =
                ((DropDownList)DiseaseGridView.FooterRow.FindControl("ddlStatus")).SelectedValue;

            SqlDataSource1.Insert();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //TO SAVE DATA SA PATIENTINFOFILE
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection registerConnection = new SqlConnection(connectionString);

            //insert
            string sql = "INSERT INTO PATIENTINFOFILE (PICODE, PINAME, PIAGE, PIGENDER, PIBDATE, PIHOMEADD, PIOFFICEADD, PIMARITALSTAT, PIOCCUPATION, PIHOMEPHONE, PIOFFICEPHONE, PINAMEOFSPOUSE, PIDATE, PIOTHERPHONE, PINAMERESPONSIBLE, PIRESPONSIBLEREL, PIOFFICEREFFERAL, PIRECSTAT, PIPHYSNAME, PIPHYSADD, PIHOSPPURP, PIMEDNAME, PIALLERGY, PIDELDATE, PIMENSPROB, PIUPHYS, PIHOSP, PIMED, PIPREG ) " +
                "VALUES (@patInfoCode, @patInfoName, @patInfoAge, @patInfoGender, @patInfoBdate, @patInfoHomeAdd, @patInfoOffAdd, @patInfoMariStat, @patInfoOccu, @patInfoHphone, @patInfoOphone, @patInfoSpouse, @patInfoDate, @patInfoOther, @patInfoResp, @patInfoRel, @patInfoRef, @patInfoRec, @patInfoPhyName, @patInfoPhyAdd, @patInfoSurgery, @patInfoMeds, @patInfoAllergy, @patInfoDel, @patInfoMens, @patInfoPhysician, @patInfoRBLSurgery, @patInfoRBLMeds, @patInfoPreggy)";
            SqlCommand registerCommand = new SqlCommand(sql, registerConnection);
            registerConnection.Open();

            registerCommand.Parameters.AddWithValue("@patInfoCode", PatCodeTextBox.Text.Trim());
            registerCommand.Parameters.AddWithValue("@patInfoName", NameTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoAge", AgeTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoGender", RBLGender.SelectedItem.Text);
            registerCommand.Parameters.AddWithValue("@patInfoBdate", BdayTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoHomeAdd", HomeAddTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoOffAdd", OffAddTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoOccu", OccuTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoHphone", HomePhoTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoOphone", OffPhoTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoSpouse", SpouseTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoDate", DateTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoOther", OtherTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoResp", RespTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoRel", RelTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoRef", RefTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoRec", RecStatTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoMariStat", MariStatDropDown.SelectedItem.Value);
            registerCommand.Parameters.AddWithValue("@patInfoPhyName", PhyNameTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoPhyAdd", PhyAddTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoSurgery", SurgeryTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoMeds", MedsTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoAllergy", AllergyTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoDel", DeliveryTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoMens", MensProbTextBox.Text);
            registerCommand.Parameters.AddWithValue("@patInfoPhysician", RBLPhysician.SelectedItem.Text);
            registerCommand.Parameters.AddWithValue("@patInfoRBLSurgery", RBLSurgery.SelectedItem.Text);
            registerCommand.Parameters.AddWithValue("@patInfoRBLMeds", RBLMeds.SelectedItem.Text);
            registerCommand.Parameters.AddWithValue("@patInfoPreggy", RBLPreggy.SelectedItem.Text);

            int rowsAffected = registerCommand.ExecuteNonQuery();

            if (rowsAffected > 0)
                Response.Write("<script>alert('Record Added!')</script>");

            registerConnection.Close();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            //TO SEARCH SA PATIENTINFOFILE
            string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection registerConnection = new SqlConnection(connectionString);

            //query
            string query = "SELECT * FROM PATIENTINFOFILE WHERE PICODE =@piCode";
            SqlCommand registerCommand = registerConnection.CreateCommand();
            registerCommand.CommandText = query;

            SqlParameter param = new SqlParameter("@piCode", PatCodeTextBox.Text);
            registerCommand.Parameters.Add(param);
            try
            {
                registerConnection.Open();
                SqlDataReader registerReader = registerCommand.ExecuteReader();

                while (registerReader.Read())
                {
                    NameTextBox.Text = registerReader["PINAME"].ToString();
                    BdayTextBox.Text = registerReader["PIBDATE"].ToString();
                    HomeAddTextBox.Text = registerReader["PIHOMEADD"].ToString();
                    OffAddTextBox.Text = registerReader["PIOFFICEADD"].ToString();
                    MariStatDropDown.Text = registerReader["PIMARITALSTAT"].ToString();
                    OccuTextBox.Text = registerReader["PIOCCUPATION"].ToString();
                    AgeTextBox.Text = registerReader["PIAGE"].ToString();
                    RBLGender.Text = registerReader["PIGENDER"].ToString();
                    HomePhoTextBox.Text = registerReader["PIHOMEPHONE"].ToString();
                    OffPhoTextBox.Text = registerReader["PIOFFICEPHONE"].ToString();
                    SpouseTextBox.Text = registerReader["PINAMEOFSPOUSE"].ToString();
                    DateTextBox.Text = registerReader["PIDATE"].ToString();
                    OtherTextBox.Text = registerReader["PIOTHERPHONE"].ToString();
                    RespTextBox.Text = registerReader["PINAMERESPONSIBLE"].ToString();
                    RelTextBox.Text = registerReader["PIRESPONSIBLEREL"].ToString();
                    RefTextBox.Text = registerReader["PIOFFICEREFFERAL"].ToString();
                    RecStatTextBox.Text = registerReader["PIRECSTAT"].ToString();
                    PhyNameTextBox.Text = registerReader["PIPHYSNAME"].ToString();
                    PhyAddTextBox.Text = registerReader["PIPHYSADD"].ToString();
                    SurgeryTextBox.Text = registerReader["PIHOSPPURP"].ToString();
                    MedsTextBox.Text = registerReader["PIMEDNAME"].ToString();
                    AllergyTextBox.Text = registerReader["PIALLERGY"].ToString();
                    DeliveryTextBox.Text = registerReader["PIDELDATE"].ToString();
                    MensProbTextBox.Text = registerReader["PIMENSPROB"].ToString();
                    RBLPhysician.Text = registerReader["PIUPHYS"].ToString();
                    RBLSurgery.Text = registerReader["PIHOSP"].ToString();
                    RBLMeds.Text = registerReader["PIMED"].ToString();
                    RBLPreggy.Text = registerReader["PIPREG"].ToString();
                    //Response.Write("<script>alert('DATA FOUND')</script>");
                }
                registerReader.Close();
                registerConnection.Close();
            }
            catch
            {
                Response.Write("<script>alert('Error!')</script>");
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            PatCodeTextBox.Text = " ";
            NameTextBox.Text = " ";
            AgeTextBox.Text = " ";
            BdayTextBox.Text = " ";
            HomeAddTextBox.Text = " ";
            OffAddTextBox.Text = " ";
            OccuTextBox.Text = " ";
            HomePhoTextBox.Text = " ";
            OffPhoTextBox.Text = " ";
            SpouseTextBox.Text = " ";
            DateTextBox.Text = null;
            OtherTextBox.Text = " ";
            RespTextBox.Text = " ";
            RelTextBox.Text = " ";
            RecStatTextBox.Text = " ";
            RefTextBox.Text = " ";
            PhyNameTextBox.Text = " ";
            PhyAddTextBox.Text = " ";
            SurgeryTextBox.Text = " ";
            MedsTextBox.Text = " ";
            AllergyTextBox.Text = " ";
            DeliveryTextBox.Text = " ";
            MensProbTextBox.Text = " ";
            DisCodeTextBox.Text = " ";
            RBLGender.ClearSelection();
            RBLPhysician.ClearSelection();
            RBLSurgery.ClearSelection();
            RBLMeds.ClearSelection();
            RBLPreggy.ClearSelection();
            MariStatDropDown.SelectedIndex = -1;
            //DiseaseGridView.Columns.Clear();
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void DCFindButton_Click(object sender, EventArgs e)
        {
            string find = "SELECT * FROM DISEASESFILE WHERE (DISCODE LIKE '%' +@disCode+ '%')";
            SqlCommand cmd = new SqlCommand(find, conn);
            cmd.Parameters.Add("@disCode", SqlDbType.NVarChar).Value = DisCodeTextBox.Text;
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet set = new DataSet();
            da.Fill(set, "DISCODE");
            DiseaseGridView.DataSourceID = null;
            DiseaseGridView.DataSource = set;
            DiseaseGridView.DataBind();
        }

        protected void ShowButton_Click(object sender, EventArgs e)
        {
            string find = "SELECT * FROM DISEASESFILE";
            SqlCommand cmd = new SqlCommand(find, conn);
            cmd.Parameters.Add("@disCode", SqlDbType.NVarChar).Value = DisCodeTextBox.Text;
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet set = new DataSet();
            da.Fill(set, "DISCODE");
            DiseaseGridView.DataSourceID = null;
            DiseaseGridView.DataSource = set;
            DiseaseGridView.DataBind();
            DisCodeTextBox.Text = " ";
        }
    }
}