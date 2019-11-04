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


public partial class SignUp : System.Web.UI.Page
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
        username.Text = useremail.Text = userpassword.Text = "";       
    }

    protected void submit_btn_click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString); // ConnectionString is used to convert to string. We can use ToString also
        string Name = username.Text;
        string Email = useremail.Text;
        string Password = userpassword.Text;

        string command = "insert into tbl_Data values( @Name, @Email, @Password)";        
        cmd = new SqlCommand(command, con);
        cmd.Parameters.Add("@Name", SqlDbType.VarChar);
        cmd.Parameters.Add("@Email", SqlDbType.VarChar);
        cmd.Parameters.Add("@Password", SqlDbType.VarChar);

        cmd.Parameters["@Name"].Value = Name;
        cmd.Parameters["@Email"].Value = Email;
        cmd.Parameters["@Password"].Value = Password;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Reset();        
        Response.Redirect("Authentication.aspx");
    }
}