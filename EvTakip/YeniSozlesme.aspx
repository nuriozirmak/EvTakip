<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="YeniSozlesme.aspx.cs" Inherits="EvTakip.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main-container">

    
    <br /> <br/> <br /><br /> 
    <form runat="server" class="row g-3 needs-validation" novalidate>
  <div class="col-md-2">
    <label for="validationCustom01" class="form-label">Ad</label>
      <asp:TextBox runat="server" class="form-control" runat="server" ID="validationCustom01"></asp:TextBox>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom02" class="form-label">Soyad</label>
      <asp:TextBox runat="server" class="form-control" runat="server" ID="validationCustom02"></asp:TextBox>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-">
    <label for="validationCustomUsername" class="form-label">Tc</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="inputGroupPrepend"></span>
      <asp:TextBox runat="server" class="form-control" runat="server" ID="validationCustom03"></asp:TextBox>
      <div class="invalid-feedback">
        Please choose a username.
      </div>
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom03" class="form-label">Şehir</label>
      <asp:TextBox runat="server" class="form-control" runat="server" ID="validationCustom04"></asp:TextBox>
    <div class="invalid-feedback">
      Please provide a valid city.
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom03" class="form-label">Telefon</label>
      <asp:TextBox runat="server" class="form-control" runat="server" ID="validationCustom05"></asp:TextBox>
    <div class="invalid-feedback">
      Please provide a valid Tel.
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom03" class="form-label">Ev ID</label>
      <asp:TextBox runat="server" class="form-control" runat="server" ID="validationCustom06"></asp:TextBox>
    <div class="invalid-feedback">
      Please provide a valid Ev ID.
    </div>
  </div>
  <div class="col-md-2">
      <asp:Button style="padding:20px;background:blue;color:white;width:250px" runat="server" ID="btnEkle" onClick="Button1_Click" Text="Ekle" />
  </div>
 
    <div class="invalid-feedback">
      Please select a valid state.
    </div>
  </div>
</form>


<table class="table" style="margin-left:200px; width:90%;margin-top:50px">
  <thead class="thead-light">
    <tr>
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
      <th><%=item.Id %></th>
      <td><%=item.Ad %></td>
      <td><%=item.Soyad %></td>
      <td><%=item.TcKimlikNo %></td>
      <td><%=item.Sehir %></td>
      <td><%=item.Telefon %></td>
      <td>Ev No: <%=item.evBilgiId %></td>
      <td><a href="YeniSozlesme.aspx?musteri=<%=item.Id %>" style="width:150px;padding:20px;background:blue;color:white;border:5px solid white">Güncelle</a></td>
      <td><a href="YeniSozlesme.aspx?sil=<%=item.Id %>" style="width:150px;padding:20px;background:red;color:white;border:5px solid white">Sil</a></td>
    </tr>

      <%
          }
          %>
  </tbody>
</table>


    </div>
      
  
</asp:Content>
