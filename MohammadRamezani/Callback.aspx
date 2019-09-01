<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Callback.aspx.cs" Inherits="Callback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>نتیجه تراکنش</title>
    <meta name="robots" content="noindex,nofollow"/>
    <link href="Content/w3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="w3-row-padding" style="margin:0">
          <div class="w3-mobile w3-margin-bottom">
        <ul class="w3-ul w3-white w3-center">
		
          <li class=" w3-xlarge w3-padding-32" style="background:#feb236">نتیجه تراکنش</li>
          <li id="message" class="w3-padding-16 " runat="server"> </li>
          <li id="res" class="w3-padding-16" runat="server"></li>
             <li class="w3-light-grey w3-padding-24">
            <a title="call" class="w3-button w3-white w3-padding-large w3-hover-black" href="Default.aspx"> بازگشت به صفحه اصلی</a>
              
          </li>
         </ul>
      </div>
            </div>
    </form>
</body>
</html>
