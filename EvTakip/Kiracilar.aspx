<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kiracilar.aspx.cs" Inherits="EvTakip.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-container">
        <br /> <br /> <br />
    <table class="data-table table nowrap">
					<thead>
						<tr>
							<th scope="col">Ad</th>
							<th scope="col">Soyad</th>
							<th scope="col">TC kimlik</th>
							<th scope="col">Şehir</th>
							<th scope="col">Telefon</th>
							<th scope="col">Ev</th>
							<th scope="col">Tahsil</th>
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
			  <td><%=item.Ad %></td>
			  <td><%=item.Soyad %></td>
			  <td><%=item.TcKimlikNo %></td>
			  <td><%=item.Sehir %></td>
			  <td><%=item.Telefon %></td>
			  <td>Ev No: <%=item.evBilgiId %></td>

			  <td><a href="KiraTahsilat.aspx?musteri=<%=item.Id %>&evId=<%=item.evBilgiId %>" style="background:blue;padding:10px; width:200px; color:white">Tahsil et</a></td>
			</tr>

			  <%
				  }
				  %>

					</tbody>
				</table>
    </div>

</asp:Content>
