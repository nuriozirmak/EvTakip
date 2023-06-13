<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MalzemeListe.aspx.cs" Inherits="EvTakip.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

           <br /> <br /> <br />
    <table class="table table-dark" style="margin-left:200px; width:90%;margin-top:50px">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Malzeme Listesi</th>
      <th scope="col">fiyat</th>
      <th scope="col">kilo</th>
      <th scope="col">kalite</th>
    </tr>
       <tbody class="table-group-divider">
    <%
          EvTakip.EvTakipEntities1 db2 = new EvTakip.EvTakipEntities1();
          var musteri = db2.MalzemeListesi.ToList();
          foreach (var item in musteri)
          {
          %>
    <tr>
      <th><%=item.Id %></th>
      <td><%=item.MalzemeAdi %></td>
      <td><%=item.fiyat %></td>
      <td><%=item.kilo %></td>
      <td><%=item.kalite %></td>
    </tr>

      <%
          }
          %>
  </thead>
</asp:Content>
