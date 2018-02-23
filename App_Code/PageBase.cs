using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// Eskender Memetov 300805013
/// <summary>
/// Summary description for PageBase
/// </summary>
public class PageBase : System.Web.UI.Page
{
  
    protected void Page_PreInit(object sender, EventArgs e)
    {

        // Session["Theme"] = Request.Cookies["themeC"].ToString();
        try
        {
            Page.Theme = Request.Cookies["themeC"].Value.ToString();
        }
        catch (NullReferenceException ex)
        {

           
        }
           
          
           
        
            //Page.Theme = Session["Theme"].ToString();

    }
} // Eskender Memetov 300805013