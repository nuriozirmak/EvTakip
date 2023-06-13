using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvTakip
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        EvTakipEntities1 db = new EvTakipEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["musteri"] != null)
                {
                    int id = int.Parse(Request.QueryString["musteri"]);
                    var tarlaGuncelle = db.MusteriBilgileri.Find(id);
                    validationCustom01.Text = tarlaGuncelle.Ad;
                    validationCustom02.Text = tarlaGuncelle.Soyad;
                    validationCustom03.Text = tarlaGuncelle.TcKimlikNo;
                    validationCustom04.Text = tarlaGuncelle.Sehir;
                    validationCustom05.Text = tarlaGuncelle.Telefon;
                    validationCustom06.Text = tarlaGuncelle.evBilgiId.ToString();
                }

                if (Request.QueryString["sil"] != null)
                {
                    int id = int.Parse(Request.QueryString["sil"]);
                    var tarlaGuncelle = db.MusteriBilgileri.FirstOrDefault(x => x.Id == id);
                    db.MusteriBilgileri.Remove(tarlaGuncelle);
                    db.SaveChanges();
                    Response.Redirect("YeniSozlesme.aspx");
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["musteri"] == null)
            {
                string id1 = validationCustom01.Text;
                string id2 = validationCustom02.Text;
                string id3 = validationCustom03.Text;
                string id4 = validationCustom04.Text;
                string id5 = validationCustom05.Text;
                int id6 = int.Parse(validationCustom06.Text);

                MusteriBilgileri musteri = new MusteriBilgileri();
                musteri.Ad = id1;
                musteri.Soyad = id2;
                musteri.TcKimlikNo = id3;
                musteri.Sehir = id4;
                musteri.Telefon = id5;
                musteri.evBilgiId = int.Parse(validationCustom06.Text);
                musteri.Eposta = "yok";

                db.MusteriBilgileri.Add(musteri);
                db.SaveChanges();

                id1 = "";
                id2 = "";
                id3 = "";
                id4 = "";
                id5 = "";
                id6 = 0;
            }

            if (Request.QueryString["musteri"] != null)
            {
                int id = int.Parse(Request.QueryString["musteri"]);
                var musteri = db.MusteriBilgileri.Find(id);

                string id1 = validationCustom01.Text;
                string id2 = validationCustom02.Text;
                string id3 = validationCustom03.Text;
                string id4 = validationCustom04.Text;
                string id5 = validationCustom05.Text;

                musteri.Ad = id1;
                musteri.Soyad = id2;
                musteri.TcKimlikNo = id3;
                musteri.Sehir = id4;
                musteri.Telefon = id5;
                musteri.evBilgiId = int.Parse(validationCustom06.Text);
                db.SaveChanges();
                Response.Redirect("YeniSozlesme.aspx");
            }
        }

    }
}