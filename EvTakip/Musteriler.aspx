<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Musteriler.aspx.cs" Inherits="EvTakip.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="main-container">
	<br /> <br /> <br /> <br />
    <div class="card-box mb-60">
				<table class="data-table table nowrap">
					<thead>
						<tr>
							<th scope="col">info</th>
							<th scope="col">ID</th>
							<th scope="col">Ad</th>
							<th scope="col">Soyad</th>
							<th scope="col">TC kimlik</th>
							<th scope="col">Şehir</th>
							<th scope="col">Telefon</th>
							<th scope="col">Ev</th>
							<th scope="col">Düzenle</th>
							<th scope="col">Sil</th>
						</tr>
					</thead>
					<tbody>

						<%
          EvTakip.EvTakipEntities1 db2 = new EvTakip.EvTakipEntities1();
          var musteri = db2.MusteriBilgileri.ToList().OrderBy(x => x.evBilgiId);
          foreach (var item in musteri)
          {
				  %>
			<tr>
				
			<td class="table-plus">
				<img src="https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?s=612x612&w=0&k=20&c=s9hO4SpyvrDIfELozPpiB_WtzQV9KhoMUP9R9gVohoU=" width="70" height="70" alt="">
			</td>
			  <th><%=item.Id %></th>
			  <td><%=item.Ad %></td>
			  <td><%=item.Soyad %></td>
			  <td><%=item.TcKimlikNo %></td>
			  <td><%=item.Sehir %></td>
			  <td><%=item.Telefon %></td>
			  <td>Ev No: <%=item.evBilgiId %></td>
			  <td><a href="YeniSozlesme.aspx?musteri=<%=item.Id %>" style="width:150px;padding:20px;background:blue;color:white;border:5px solid white">Güncelle</a></td>
			  <td><a href="Musteriler.aspx?sil=<%=item.Id %>" style="width:150px;padding:20px;background:red;color:white;border:5px solid white">Sil</a></td>
			</tr>

			  <%
				  }
				  %>

					</tbody>
				</table>
			</div>
    </div>
</asp:Content>
