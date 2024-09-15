using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web;

namespace ogrenci_bilgi_sistemi
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=TUNA\\SQLEXPRESS;Initial Catalog=OBSDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select *from TBL_OGRENCI where NUMARA=@p1 and OGRSIFRE=@p2", baglanti);
            komut.Parameters.Add(new SqlParameter("@p1", SqlDbType.Int)).Value = int.Parse(TxtNumara.Text); 
            komut.Parameters.Add(new SqlParameter("@p2", SqlDbType.VarChar)).Value = TxtSifre.Text;

            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("NUMARA", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx?Numara="+TxtNumara.Text);
            }
            else
            {
                TxtSifre.Text = "Hatalı şifre";
            }
            baglanti.Close();
        }




    }
}
