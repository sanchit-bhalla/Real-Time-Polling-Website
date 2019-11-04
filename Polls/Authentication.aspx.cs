using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;
using System.Data;


public partial class Authentication : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void Reset()
    {
        name.Text = password.Text = "";
    }
    protected void login_btn_click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString); // ConnectionString is used to convert to string. We can use ToString also
        string Name = name.Text;
        string Password = password.Text;
        
        string command = "select * from tbl_data where Name= @Name and Password= @Password";          
        cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@Name", name.Text);
        cmd.Parameters.AddWithValue("@Password", password.Text);
        //cmd.Parameters.Add("@Password", SqlDbType.VarChar);
        //cmd.Parameters["@EmpId"].Value = Email;
        //cmd.Parameters["@Password"].Value = Password;

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["UserPassword"] = password.Text.ToString();
            Session["UserName"] = name.Text.ToString();            
            Response.Redirect("StartVoting.aspx");
        }
        else
        {
            MessageBox.Show("Cannot find the record...", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Reset();
        }
        dr.Close();
        con.Close();               
    }    
}