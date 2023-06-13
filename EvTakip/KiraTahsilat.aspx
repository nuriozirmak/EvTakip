<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KiraTahsilat.aspx.cs" Inherits="EvTakip.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-container">
    <br /> <br /> <br />
            <table class="data-table table nowrap">
					<thead>
						<tr>
							<th scope="col">Ad</th>
							<th scope="col">Soyad</th>
							<th scope="col">Telefon</th>
							<th scope="col">ev</th>
							<th scope="col">dönem</th>
						</tr>
					</thead>
					<tbody>

						<%
          EvTakip.EvTakipEntities1 db2 = new EvTakip.EvTakipEntities1();
          var fatura = (from f in db2.FaturaBilgisi
              join m in db2.MusteriBilgileri on f.MusteriBilgileriId equals m.Id
              select new {
                  Fatura = f,
                  Musteri = m
              }).ToList();

                foreach (var item in fatura)
                {
                    %>
                    <tr>
                        <td><%= item.Musteri.Ad %></td>
                        <td><%= item.Musteri.Soyad %></td>
                        <td><%= item.Musteri.Telefon %></td>
                        <td><%= item.Fatura.EvMaliyetId %></td>
                        <td><%= item.Fatura.donemNo %></td>
                    </tr>
                    <%
                }

				  %>

					</tbody>
				</table>
         </div>

</asp:Content>
