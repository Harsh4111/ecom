﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ecom.Models
{
    public class Class1
    {
        public class common
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Ecommerce"].ConnectionString);
            public void queary(string query)
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            public DataTable Fetch(string query)
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                
                sda.Fill(dt);
                return dt;
            }
        }

    }
}


