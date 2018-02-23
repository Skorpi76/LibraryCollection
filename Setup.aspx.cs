using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Eskender Memetov 300805013

public partial class Setup : PageBase
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOrangeMain_Click(object sender, EventArgs e)
    {
        ChangeThemeTo(btnLight.Text);
    }
    // Eskender Memetov 300805013
    protected void btnDark_Click(object sender, EventArgs e)
    {

        ChangeThemeTo(btnDark.Text);
    }
    protected void ChangeThemeTo(string themeName)
    {
        Response.Cookies["themeC"].Value = themeName;
        Response.Cookies["themeC"].Expires = DateTime.Now.AddYears(3);
        //Session["Theme"] = themeName;
        //Server.Transfer(Request.FilePath);
        Response.Redirect(Request.RawUrl);
    }
} // Eskender Memetov 300805013