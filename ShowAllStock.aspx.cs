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
    public partial class ShowAllStock : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename =|DataDirectory|\StockDB.mdf; Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDispStock_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();

            //Display number of Vehicles in stock:
            conn.Open();
            comm = new SqlCommand(sql_Stock, conn);
            SqlDataReader reader = comm.ExecuteReader();

            int count = 0;

            while(reader.Read())
            {
                count++;
                //lblNumCars.Text = "Vehicles in stock: " + reader.GetValue(0).ToString();
                lblNumCars.Text = "Vehicles in stock: " + count;
            }

            conn.Close();

        }
        /*
        protected void btnHatch(object sender, EventArgs e)
        {
            
        }

        protected void btnSedan(object sender, EventArgs e)
        {
            
        }

        protected void btnSUV(object sender, EventArgs e)
        {
            
        }

        protected void btnBakkie(object sender, EventArgs e)
        {
            
        }

        protected void btnCommercial(object sender, EventArgs e)
        {
            
        }
        
        protected void btnHatch_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSedan_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSUV_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnBakkie_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCommercial_Click(object sender, EventArgs e)
        {
            
        }
        */

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable WHERE BodyType = 'Hatch'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable WHERE BodyType = 'Sedan'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable WHERE BodyType = 'SUV'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable WHERE BodyType = 'Bakkie'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable WHERE BodyType = 'Commercial'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }
    }
}