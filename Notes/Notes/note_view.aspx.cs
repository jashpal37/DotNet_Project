using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Notes
{
    public partial class note_view : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        /*
        protected void btn_Showclick(object sender, EventArgs e)
        {
            ShowNotes();
        }


        protected void ShowNotes()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["CSE"].ConnectionString;
            try
            {
                using (con)
                {
                    string command = "Select * from notes";
                    SqlCommand cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridViewStu.DataSource = rdr;
                    GridViewStu.DataBind();
                    rdr.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
        */


        //protected void btn_click(object sender, EventArgs e)
        //{
        //    Response.Redirect("notes_home.aspx", true);
        //}

        protected void delete_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["CSE"].ConnectionString;
            try
            {
                using (con)
                {
                    string query = "DELETE top(1) from notes";
                    SqlCommand cmd = new SqlCommand(query);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void btn_Createclick(object sender, EventArgs e)
        {
            Response.Redirect("notes_home.aspx", true);
        }

    }
}