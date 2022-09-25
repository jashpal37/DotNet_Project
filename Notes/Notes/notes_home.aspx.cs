﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Notes
{
    public partial class notes_home : System.Web.UI.Page
    {
        //this connects with the web.config file...
        string connectionString = ConfigurationManager.ConnectionStrings["CSE"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            /*
            try
            {
                using (con)
                {
                    string command = "Select * from Table";
                    SqlCommand cmd = new SqlCommand(command, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridViewStu.DataSource = rdr;
                    GridViewStu.DataBind();
                    rdr.Close();
                }

            }
            catch(Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
            */
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["CSE"].ConnectionString;
            //int i = 0;
            string note = TextArea.InnerText;
            
            try
            {
                using (con)
                {
                    string text = "insert into notes (title,Description) values(@a,@b)";
                    SqlCommand cmd = new SqlCommand(text, con);
                    cmd.Parameters.AddWithValue("a", TitleText.Text);
                    cmd.Parameters.AddWithValue("b", TextArea.InnerText);
                    //cmd.Parameters.AddWithValue("c", i++);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("note_view.aspx", true);
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            string note = TextArea.InnerText;
            if (!string.IsNullOrEmpty(note))
            {
                note = "";
            }
            else
            {
                Response.Write("Nothing to clear.");
            }

        }

        protected void mynotes_Click(object sender, EventArgs e)
        {
            Response.Redirect("note_view.aspx",true);
        }
    }
}