using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvTakip
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        EvTakipEntities1 db = new EvTakipEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["musteri"] != null)
                {
                    DateTime tarih = DateTime.Now;
                    int yil = tarih.Year;
                    int ay = tarih.Month;

                    string ayYilNumarasi = yil + "-" + ay;


                    FaturaBilgisi fatura = new FaturaBilgisi();
                    fatura.MusteriBilgileriId = int.Parse(Request.QueryString["musteri"]);
                    fatura.EvMaliyetId = int.Parse(Request.QueryString["evId"]);
                    fatura.donemNo = ayYilNumarasi;

                    db.FaturaBilgisi.Add(fatura);
                    db.SaveChanges();
                    Response.Redirect("KiraTahsilat.aspx");
                }
            }
         }
    }
}