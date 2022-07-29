using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//ELDNET SUMMER - DELA TORRE, GAYLE MARIE
namespace EldnetGew
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            NameTextBox.Text = " ";
            UsernameTextBox.Text = " ";
            PasswordTextBox.Text = " ";
            ConfirmPasswordTextBox.Text = " ";
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }
    }
}