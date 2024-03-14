using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Caching;

namespace AdminLogin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-BQFV1CO\SQLEXPRESS;Initial Catalog=AdminDb;Integrated Security=True");
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLADMIN WHERE KULLANICI=@P1 AND SIFRE=@P2", baglanti);
            cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Veriler.aspx");
            }
            else
            {
                Response.Write("Hatalı giriş yapıldı");
            }
            baglanti.Close();
        }
        }
    }