using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Eskender Memetov 300805013
public partial class Bookinfo : PageBase
{
    private int bookId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!((System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated))
        {
            BookDetails0.Rows[9].Visible = false;
            BookDetails0.Rows[10].Visible = false;
        }

    }

    protected void BookDetails0_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        Response.Redirect("~/Books.aspx");
    }

    protected void BookDetails0_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        BookDetails0.DataBind();
    }

    protected void BookDetails0_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        Response.Redirect("~/Books.aspx");
    }
}// Eskender Memetov 300805013