using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;
using System.Data;

public partial class StartVoting : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserPassword"] != null && Session["UserPassword"] != "" && Session["UserName"] != null && Session["UserName"] != "")
        {
            lblname.Text = "Welcome "+Session["UserName"].ToString() + ", Vote for Your next DR !";
        }
        else
        {
            Response.Redirect("Default.aspx");
        }  
    }
    protected void vote_for_rashtar(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString); // ConnectionString is used to convert to string. We can use ToString also        
        string Password = Session["UserPassword"].ToString();
        string VoteFor = "Rashtar";

        try
        {
            string command = "insert into Vote values(  @Password, @VoteFor)";
            cmd = new SqlCommand(command, con);            
            cmd.Parameters.Add("@Password", SqlDbType.VarChar);
            cmd.Parameters.Add("@VoteFor", SqlDbType.VarChar);
            
            cmd.Parameters["@Password"].Value = Password;
            cmd.Parameters["@VoteFor"].Value = VoteFor;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();            
            MessageBox.Show("Vote Added...", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Response.Redirect("Default.aspx");
        }          
        catch (Exception ex)
        {
            lbl_error.Text = "You cannot vote more than once!";            
        }                
    }
    protected void vote_for_parul(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString); // ConnectionString is used to convert to string. We can use ToString also        
        string Password = Session["UserPassword"].ToString();
        string VoteFor = "Parul";

        try
        {
            string command = "insert into Vote values(  @Password, @VoteFor)";
            cmd = new SqlCommand(command, con);
            cmd.Parameters.Add("@Password", SqlDbType.VarChar);
            cmd.Parameters.Add("@VoteFor", SqlDbType.VarChar);

            cmd.Parameters["@Password"].Value = Password;
            cmd.Parameters["@VoteFor"].Value = VoteFor;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Vote Added...", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Response.Redirect("Default.aspx");
        }
        catch (Exception ex)
        {
            lbl_error.Text = "You cannot vote more than once!";
        }
    }
}