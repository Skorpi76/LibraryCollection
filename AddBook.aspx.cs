using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Eskender Memetov 300805013
public partial class AddBook : PageBase
{
    private TextBox txtBookName;
    private TextBox txtAuthorName;
    private TextBox txtIsbnNumber;
    private bool landedToAFriend = false;

    protected void Page_Load(object sender, EventArgs e)
    {
     
         txtBookName = (TextBox)AddBookUserControl.FindControl("txtBookName");
         txtAuthorName = (TextBox)AddBookUserControl.FindControl("txtAuthorName");
         txtIsbnNumber = (TextBox)AddBookUserControl.FindControl("txtIsbnNumber");

        if (!rdLadnedYes.Checked)
        {
            txtFriendName.Enabled = false;
            FriendNameValReq.Enabled = false;
        }
      
    }
    // Eskender Memetov 300805013



    protected void btnAddBook_Click(object sender, EventArgs e)
    {
       
        if (Page.IsValid)
        {
            SqlConnection conn;
            SqlCommand comm;

            string connectionString = ConfigurationManager.ConnectionStrings["LibraryColletion"].ConnectionString;
            conn = new SqlConnection(connectionString);

            //string sqlSrting = "insert into Books (BOOKTITLE, BOOKAUTHOR, ISBN, GENREID, NUMBEROFPAGES, LANDEDTOFRIEND, FRIENDSNAME, COMMENTS)" +
            //    "values (@BOOKTITLE, @BOOKAUTHOR, @ISBN, @GENREID, @NUMBEROFPAGES, @LANDEDTOFRIEND, @FRIENDSNAME, @COMMENTS);";
            string sqlComm = "INSERT INTO [BOOKS] ([BOOKTITLE], [BOOKAUTOR], [ISBN], [GENREID], [NUMBEROFPAGES], [LANDEDTOFRIEND], [FRIENDSNAME], [COMMENTS]) " +
                "VALUES (@BOOKTITLE, @BOOKAUTOR, @ISBN, @GENREID, @NUMBEROFPAGES, @LANDEDTOFRIEND, @FRIENDSNAME, @COMMENTS)";
            comm = new SqlCommand(sqlComm, conn);

            comm.Parameters.Add("@BOOKTITLE", System.Data.SqlDbType.VarChar, 50);
            comm.Parameters["@BOOKTITLE"].Value = txtBookName.Text;
            comm.Parameters.Add("@BOOKAUTOR", System.Data.SqlDbType.VarChar, 25);
            comm.Parameters["@BOOKAUTOR"].Value = txtAuthorName.Text;
            comm.Parameters.Add("@ISBN", System.Data.SqlDbType.VarChar, 50);
            comm.Parameters["@ISBN"].Value = txtIsbnNumber.Text;
            comm.Parameters.Add("@GENREID", System.Data.SqlDbType.Int);
            comm.Parameters["@GENREID"].Value = dropdownGenre.SelectedValue;
            comm.Parameters.Add("@NUMBEROFPAGES", System.Data.SqlDbType.Int);
            comm.Parameters["@NUMBEROFPAGES"].Value = Convert.ToInt32(txtNumberOfPages.Text);
            comm.Parameters.Add("@LANDEDTOFRIEND", System.Data.SqlDbType.TinyInt);
            comm.Parameters["@LANDEDTOFRIEND"].Value = LendedToFriend();
            comm.Parameters.Add("@FRIENDSNAME", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@FRIENDSNAME"].Value = txtFriendName.Text;
            comm.Parameters.Add("@COMMENTS", System.Data.SqlDbType.Text);
            comm.Parameters["@COMMENTS"].Value = txtComments.Text;   
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
            Response.Redirect("~/Books.aspx");
        }

    }

    private object LendedToFriend()
    {
        if (rdLadnedYes.Checked)
            return 1;
        else
            return 0;
    }

    protected void rdLadnedYes_CheckedChanged(object sender, EventArgs e)
    {
        if (rdLadnedYes.Checked)
        {
            txtFriendName.Enabled = true;
            FriendNameValReq.Enabled = true;
            landedToAFriend = true;
        }
        else if (rdLandedNo.Checked)
        {
            landedToAFriend = false;
            txtFriendName.Enabled = false;
            FriendNameValReq.Enabled = false;
        }

    }



    protected void btnCancel_Click(object sender, EventArgs e)
    {

        ClearTextBoxes(Page);
    }

    protected void ClearTextBoxes(Control page)
    {
        foreach (Control ctrl in page.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox t = ctrl as TextBox;

                if (t != null)
                {
                    t.Text = String.Empty;
                }
            }
            else
            {
                if (ctrl.Controls.Count > 0)
                {
                    ClearTextBoxes(ctrl);
                }
            }
        }
    }

    // Eskender Memetov 300805013
}