<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="EvTakip.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      
      <title>GİRİŞ SAYFASI</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
  
      <link rel="icon" href="images/fevicon.png" type="image/png" />
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <link rel="stylesheet" href="style.css" />
      <link rel="stylesheet" href="css/responsive.css" />
      <link rel="stylesheet" href="css/colors.css" />
      <link rel="stylesheet" href="css/bootstrap-select.css" />
      <link rel="stylesheet" href="css/perfect-scrollbar.css" />
      <link rel="stylesheet" href="css/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
  <body class="inner_page login">
      <div class="full_container">
         <div class="container">
            <div class="center verticle_center full_height">
               <div class="login_section">
                  <div class="logo_login">
                     <div class="center">
                        <img width="210" src="images/logo/logo1.png" alt="#" />
                     </div>
                  </div>
                  <div class="login_form">

                     <form id="form2" runat="server">
                        <fieldset>
                           <div class="field">
                              <label class="label_field">Kullanıcı Adı</label>
                               <input ID="mail" type="text" runat="server" placeholder="" />
                           </div>
                           <div class="field">
                              <label class="label_field">Şifre</label>
                              <input type="password"  ID="sifre" runat="server" name="Şifre" placeholder="" />
                           </div>
                           <div class="field">
                              <label class="label_field hidden">hidden label</label>
                           </div>
                           <div class="field margin_0">
                              <label class="label_field hidden">hidden label</label>
                               <asp:Button ID="Button1" OnClick="Button1_Click" class="main_bt" runat="server" Text="GİRİŞ YAP" />
                               
                           </div>
                            <div role="alert">
                            <asp:Label ID="hataliGiris" runat="server" Text=""></asp:Label>
                            </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </body>
        </div>
    </form>
</body>
</html>
