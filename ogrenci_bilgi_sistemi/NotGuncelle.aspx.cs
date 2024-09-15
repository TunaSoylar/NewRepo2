using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenci_bilgi_sistemi
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (int.TryParse(Request.QueryString["NOTID"], out nid))
                {
                    DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
                    var notBilgisi = dt.NotGetir2(nid);

                    if (notBilgisi.Rows.Count > 0)
                    {
                        TxtOgrID.Text = notBilgisi[0].OGRENCIID.ToString();
                        TxtOgrAdSoyad.Text = notBilgisi[0].OGRENCIADSOYAD;
                        TxtDersad.Text = notBilgisi[0].DERSAD;
                        TxtSinav1.Text = notBilgisi[0].SINAV1.ToString();
                        TxtSinav2.Text = notBilgisi[0].SINAV2.ToString();
                        TxtSinav3.Text = notBilgisi[0].SINAV3.ToString();
                        TxtOrt.Text = notBilgisi[0].ORTALAMA.ToString();
                        TextDurum.Text = notBilgisi[0].DURUM.ToString();
                    }
                    else
                    {
                        //lblMessage.Text = "Not bilgisi bulunamadı.";
                        //lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    //Response.Redirect("ErrorPage.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            try
            {
                double sinav1 = Convert.ToDouble(TxtSinav1.Text);
                double sinav2 = Convert.ToDouble(TxtSinav2.Text);
                double sinav3 = Convert.ToDouble(TxtSinav3.Text);

                
                double ortalama = (sinav1 + sinav2 + sinav3) / 3;
                TxtOrt.Text = ortalama.ToString("0.00");

                
                TextDurum.Text = ortalama >= 50 ? "Geçti" : "Kaldı";
            }
            catch (FormatException)
            {
                
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

            try
            {
                byte sinav1 = byte.Parse(TxtSinav1.Text);
                byte sinav2 = byte.Parse(TxtSinav2.Text);
                byte sinav3 = byte.Parse(TxtSinav3.Text);
                decimal ortalama = decimal.Parse(TxtOrt.Text);

                
                bool durum = TextDurum.Text == "Geçti";

                
                DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
                dt.NotGuncelle(sinav1, sinav2, sinav3, ortalama, durum, nid);

                
                Response.Redirect("NotListesi.aspx");
            }
            catch (FormatException)
            {
                
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}