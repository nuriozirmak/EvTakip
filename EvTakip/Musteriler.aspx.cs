using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvTakip
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        EvTakipEntities1 db = new EvTakipEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if (Request.QueryString["sil"] != null)
                {
                    int id = int.Parse(Request.QueryString["sil"]);
                    var tarlaGuncelle = db.MusteriBilgileri.FirstOrDefault(x => x.Id == id);
                    db.MusteriBilgileri.Remove(tarlaGuncelle);
                    db.SaveChanges();
                    Response.Redirect("Musteriler.aspx");
                }
            }
        }
    }
}