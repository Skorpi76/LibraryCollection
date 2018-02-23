using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Eskender Memetov 300805013
public partial class Search : PageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!((System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated))
        {
            lblAddGenre.Visible = false;
            txtGenreName.Visible = false;
            btnAddGenre.Visible = false;            
        }
    }

 

    protected void bookGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("~/Bookinfo.aspx?move=" + e.CommandArgument);
    }



    protected void btnAddGenre_Click(object sender, EventArgs e)
    {
        if (txtGenreName.Text != "")
        {
            SqlConnection conn;
            SqlCommand comm;

            string connectionString = ConfigurationManager.ConnectionStrings["LibraryColletion"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string sqlComm = "INSERT INTO GENRE (GENREID, GENRENAME)" +
                "VALUES ((SELECT MAX(GENREID) from GENRE) + 1, @GENRENAME);";
            comm = new SqlCommand(sqlComm, conn);

            comm.Parameters.Add("@GENRENAME", System.Data.SqlDbType.VarChar, 25);
            comm.Parameters["@GENRENAME"].Value = txtGenreName.Text;

            try
            {

                conn.Open();
                comm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");
            }
            finally
            {
                conn.Close();
            }
            Response.Redirect("Search.aspx");
        }
    }
} // Eskender Memetov 300805013