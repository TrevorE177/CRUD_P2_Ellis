using CRUD_P2_Ellis.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_P2_Ellis
{
    public partial class Confirmation : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db.getConnection()))
            {
                SqlCommand cmd = new SqlCommand("NewCustomerSummary_Ellis", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                firstandlastname.Text = dr["FirstName"].ToString() + " " + dr["LastName"].ToString();
                customernumber.Text = dr["Id"].ToString();
                ordernumber.Text = dr["OrderNumber"].ToString();
                productname.Text = dr["ProductName"].ToString();
                dr.Close();
                conn.Close();
            }

            using (SqlConnection conn = new SqlConnection(db.getConnection()))
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("NewCustomerSummary_Ellis", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                dr.Close();
                conn.Close();
                orderhistory.DataSource = dt;
                orderhistory.DataBind();
            }
        }
    }
}