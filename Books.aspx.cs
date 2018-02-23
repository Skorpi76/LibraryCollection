using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Eskender Memetov 300805013
public partial class Books : PageBase
{
   


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void gridBooks_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("~/Bookinfo.aspx?move=" + e.CommandArgument);
    }
} // Eskender Memetov 300805013