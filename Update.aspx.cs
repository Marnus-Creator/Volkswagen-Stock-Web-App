using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Volkswagen_Stock_Web_App
{
    public partial class Update : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet dset;
        public SqlDataAdapter adapt;
        public string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\StockDB.mdf; Integrated Security=True";

        decimal Price = 0;
        String Model = "";
        String BodyType = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Insert(string Model, string BodyType, decimal Price)
        {
            
            try
            {
                string insert_query = "INSERT INTO StockTable VALUES(@Model,@BodyType,@Price)";

                con = new SqlConnection(connstr);
                con.Open();

                com = new SqlCommand(insert_query, con);
                com.Parameters.AddWithValue("@Model", Model);
                com.Parameters.AddWithValue("@BodyType", BodyType);
                com.Parameters.AddWithValue("@Price", Price);
                com.ExecuteNonQuery();

                con.Close();
            }
            catch
            {
                lblEmptyCart.Text = "Sorry, Cannot add";
            }

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            

        }

        private void Display()
        {
            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM StockTable";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView1.DataSource = dset;
            GridView1.DataBind();

            con.Close();
        }
                
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM StockTable";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView1.DataSource = dset;
            GridView1.DataBind();

            con.Close();
        }

        /*string Model, string BodyType, decimal Price
        decimal Price = 0;
        String Model = "";
        String BodyType = "";
        */

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Price = decimal.Parse(tbxPrice.Text);
            Model = tbxModel.Text;
            BodyType = tbxBType.Text;

            
            Insert(Model, BodyType, Price);
            Display();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                string delete_query = "DELETE FROM StockTable WHERE VehicleID = '" + tbxDelete.Text + "'";
                con = new SqlConnection(connstr);
                con.Open();
                com = new SqlCommand(delete_query, con);
                com.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
                lblEmptyCart.Text = "Sorry, cannot remove";
            }

            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM StockTable";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView1.DataSource = dset;
            GridView1.DataBind();

            con.Close();
        }
    }
}