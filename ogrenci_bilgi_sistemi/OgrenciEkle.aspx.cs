using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenci_bilgi_sistemi
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt= new
                DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciEkle(TxtOgrad.Text,TxtOgrSoyad.Text,TxtOgrTelefon.Text,TxtOgrMail.Text,TxtOgrSifre.Text,TxtOgrFoto.Text);
            Response.Redirect("Default.aspx");
        }
    }
}