using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CRUD_P2_Ellis.Models;

namespace CRUD_P2_Ellis
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable products = new DataTable();
                try
                {
                    using (SqlConnection conn = new SqlConnection(db.getConnection()))
                    {
                        SqlCommand cmd = new SqlCommand("ProductList_Ellis", conn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        conn.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        products.Load(dr);
                        productsDropdown.DataSource = products;
                        productsDropdown.DataTextField = "ProductName";
                        //productsDropdown.DataValueField = "UnitPrice".ToString();
                        productsDropdown.DataBind();
                        dr.Close();
                    }
                }
                catch { }
            }
        }

        protected void btnsubmitorder_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db.getConnection()))
            {
                SqlCommand cmd = new SqlCommand("InsertCustomerAndOrder_Ellis", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FirstName", txtfirstname.Text);
                cmd.Parameters.AddWithValue("@LastName", txtlastname.Text);
                cmd.Parameters.AddWithValue("@City", txtcity.Text);
                cmd.Parameters.AddWithValue("@Country", txtcountry.Text);
                cmd.Parameters.AddWithValue("@Phone", txtphonenumber.Text);

                // Broken: "can't convert nvarchar to numeric"
                //cmd.Parameters.AddWithValue("@TotalAmount", productsDropdown.DataValueField);

                DateTime time = DateTime.Now;
                string format = "yyyy-MM-dd HH:mm:ss.FFF";
                cmd.Parameters.AddWithValue("OrderDate", time.ToString(format));

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("Confirmation.aspx");
            }
        }
    }
}