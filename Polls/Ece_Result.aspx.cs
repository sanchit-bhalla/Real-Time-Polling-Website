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

public partial class Ece_Result : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string VoteFor = "Candidate A";
        string command = "select count(Password), VoteFor from ece_Vote group by VoteFor having VoteFor = @VoteFor";
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        cmd = new SqlCommand(command, con);
        cmd.Parameters.AddWithValue("@VoteFor", VoteFor);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            AVotes.Text = dr[0].ToString();
        }
        else
        {
            AVotes.Text = "0";
        }
        dr.Close();
        con.Close();

        string VoteForp = "Candidate B";
        string commandp = "select count(Password), VoteFor from ece_Vote group by VoteFor having VoteFor = @VoteForp";
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        cmd = new SqlCommand(commandp, con);
        cmd.Parameters.AddWithValue("@VoteForp", VoteForp);
        con.Open();
        SqlDataReader drp = cmd.ExecuteReader();
        if (drp.Read())
        {
            BVotes.Text = drp[0].ToString();
        }
        else
        {
            BVotes.Text = "0";
        }
        dr.Close();
        con.Close();
    }

}