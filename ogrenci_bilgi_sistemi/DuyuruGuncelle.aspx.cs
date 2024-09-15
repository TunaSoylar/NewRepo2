using System;
using System.Web.UI;

namespace ogrenci_bilgi_sistemi
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (int.TryParse(Request.QueryString["DUYURUID"], out id)) 
                {
                    DataSetTableAdapters.TBL_DUYURUTableAdapter dt = new DataSetTableAdapters.TBL_DUYURUTableAdapter();
                    var duyuru = dt.DuyuruSec(id);

                    if (duyuru.Rows.Count > 0)
                    {
                        
                        TxtDuyuruID.Text = id.ToString();
                        TxtDuyuruBaslik.Text = duyuru[0].DUYURUBASLIK;
                        TextArea1.Value = duyuru[0].DUYURUICERIK;
                    }
                    else
                    {
                        
                        // lblMessage.Text = "Duyuru bulunamadı.";
                        // lblMessage.ForeColor = System.Drawing.Color.Red;
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
            DataSetTableAdapters.TBL_DUYURUTableAdapter dt = new DataSetTableAdapters.TBL_DUYURUTableAdapter();
            dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TextArea1.Value, Convert.ToInt32(TxtDuyuruID.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}
