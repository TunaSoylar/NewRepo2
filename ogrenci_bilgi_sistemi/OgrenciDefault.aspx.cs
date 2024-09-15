using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenci_bilgi_sistemi
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TxtNumara.Text = Session["NUMARA"].ToString();
            //DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            //TxtAdSoyad.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRAD + " " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSOYAD;
            //TxtMail.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRMAİL;
            //TxtSifre.Text = "Şifre: " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSIFRE;
            //TxtTelefon.Text = "Telefon: " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRTELEFON;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?NUMARA=" + TxtNumara.Text);
        }
    }
}