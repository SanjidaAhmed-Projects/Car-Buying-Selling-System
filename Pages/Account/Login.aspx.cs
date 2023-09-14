using System;

public partial class Pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
            User user = ConnectionClass.LoginUser(txtLogin.Text,txtPassword.Text);
            if (user != null)
            {
                Session["login"] = user.Name;
                Session["type"] = user.Type;

                Response.Redirect("~/Pages/Home.aspx");
            }
            else
                lblResult.Text = "Login failed!";
    }
}