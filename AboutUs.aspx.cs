using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Eskender Memetov 300805013
public partial class AboutUs : PageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlConnection conn;
            SqlCommand comm;

            string connectionString = ConfigurationManager.ConnectionStrings["LibraryColletion"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string sqlComm = "INSERT INTO FEEDBACK (COMMENTID, NAME, EMAIL, COMMENT)" +
                "VALUES ((SELECT MAX(COMMENTID) from FEEDBACK) + 1, @NAME, @EMAIL, @COMMENT);";
            comm = new SqlCommand(sqlComm, conn);

            comm.Parameters.Add("@NAME", System.Data.SqlDbType.VarChar, 50);
            comm.Parameters["@NAME"].Value = txtName.Text;
            comm.Parameters.Add("@EMAIL", System.Data.SqlDbType.VarChar, 50);
            comm.Parameters["@EMAIL"].Value = txtEmail.Text;
            comm.Parameters.Add("@COMMENT", System.Data.SqlDbType.Text);
            comm.Parameters["@COMMENT"].Value = txtComment.Text;

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
            Response.Redirect("AboutUs.aspx");
        }
    }
} // Eskender Memetov 300805013