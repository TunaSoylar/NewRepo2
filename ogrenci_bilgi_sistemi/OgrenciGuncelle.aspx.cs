using System;
using System.Web.UI;

namespace ogrenci_bilgi_sistemi
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (int.TryParse(Request.QueryString["OGRID"], out id)) 
                {
                    TxtOgrId.Text = id.ToString();

                    
                    var dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
                    var ogrenci = dt.OgrenciSec(id)[0];

                    
                    TxtOgrad.Text = ogrenci.OGRAD;
                    TxtOgrSoyad.Text = ogrenci.OGRSOYAD;
                    TxtOgrMail.Text = ogrenci.OGRMAİL;  
                    TxtOgrSifre.Text = ogrenci.OGRSIFRE;
                    TxtOgrFoto.Text = ogrenci.OGRFOTOGRAF;
                    TxtOgrTelefon.Text = ogrenci.OGRTELEFON; 
                }
                else
                {
                    
                    //Response.Redirect("ErrorPage.aspx"); 
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            var dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciGuncelle(
                TxtOgrad.Text,
                TxtOgrSoyad.Text,
                TxtOgrTelefon.Text,
                TxtOgrMail.Text,
                TxtOgrSifre.Text,
                Convert.ToInt32(TxtOgrId.Text)
                
            );

           
            Response.Redirect("Default.aspx");
        }
    }
}
