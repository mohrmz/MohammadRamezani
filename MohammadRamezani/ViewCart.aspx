<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="ViewCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
	<link href="Styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Content/w3.css" rel="stylesheet" />
    <style>
        #btnUpdateCart{float:right!important;}
        #btnRemove{background:#d64161!important;color:black!important;}
    </style>
</head>
<body>
    <div class="container">
   <form runat="server" id="form2">
		
			<h1 class="w3-jumbo w3-center"> سبد خرید شما شماره فاکتور :  <span runat="server" id="txt"></span></h1>
			<a title="callback" class="w3-button w3-black w3-padding-large w3-hover-brown" style="float:right!important;" href="price.aspx">&lt; بازگشت به محصولات</a>
			<br /><br />
			<asp:GridView runat="server" ID="gvShoppingCart" AutoGenerateColumns="false" EmptyDataText="سبد خرید شما خالی است" GridLines="None" Width="100%" CellPadding="5" ShowFooter="true" DataKeyNames="ProductId" OnRowDataBound="gvShoppingCart_RowDataBound" OnRowCommand="gvShoppingCart_RowCommand">
				<HeaderStyle HorizontalAlign="Left" BackColor="#fed89a" ForeColor="#FFFFFF" />
				<FooterStyle HorizontalAlign="Right" BackColor="#feb236" ForeColor="#FFFFFF" />
				<AlternatingRowStyle BackColor="#F8F8F8" />
				<Columns>
					<asp:BoundField DataField="Description" HeaderText="توضبحات" />
					<asp:TemplateField HeaderText="تعداد">
						<ItemTemplate>
							<asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox><br />
							<asp:LinkButton class="w3-large w3-round-medium" runat="server" ID="btnRemove" Text="حذف" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:BoundField DataField="UnitPrice" HeaderText="مبلغ" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0}" />
					<asp:BoundField DataField="TotalPrice" HeaderText="جمع کل" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0}" />
				</Columns>
			</asp:GridView>
            


			<br />
            <div class="w3-row-padding">
			<asp:Button class="w3-button w3-black w3-padding-large w3-hover-brown w3-mobile" runat="server" ID="btnUpdateCart" Text="بروز رسانی سبد خرید" OnClick="btnUpdateCart_Click" />
            <button class="w3-button w3-black w3-padding-large w3-hover-brown w3-mobile" onclick="document.getElementById('id01').style.display='block'"  ID="Button1"    >پرداخت</button>


   <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-padding w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      <h1>تکمیل اطلاعات</h1>
      </div>

  
        <div class="w3-section">
          <label class="w3-right-align" style="float:right!important" ><b>نام</b></label>
          <input runat="server" id="txtname" class="w3-input w3-right-align w3-border w3-margin-bottom" type="text" placeholder="نام خود را وارد کنید" name="name" required>
          <label class="w3-right-align" style="float:right!important"><b>نام خانوادگی</b></label>
          <input runat="server" id="txtlast" class="w3-input w3-right-align w3-border" placeholder="نام خانوادگی خود را وارد کنید" name="last name" required>
           <label class="w3-right-align" style="float:right!important"><b>َشماره تماس</b></label>
          <input runat="server" id="txtphone" class="w3-input w3-right-align w3-border"  type="tel" placeholder="شماره تماس خود را وارد کنید" name="phone number" required>
            <h1 class="w3-medium">تذکر : هرگونه پرداخت بدون هماهنگی و مشاوره قبلی در مورد نوع پروژه بر عهده خود مشتری است</h1>
  <input class="w3-check w3-margin-top" type="checkbox" required onchange="document.getElementById('gopay').disabled = !this.checked;"> 
            تعهد می دهم کلیه ی موارد ذکر شده در بالا و همچنین
          <a title="ruless" href="roles.aspx" class="w3-brown w3-large"> قوانین و مقررات </a> 
            را خوانده و قبول دارم
  
          <asp:Button ID="gopay" runat="server" OnClick="btnpay_Click" Text="انتقال به صفحه پرداخت" Enabled="false" CssClass="w3-button  w3-center w3-block w3-green w3-section w3-padding" />
        
        </div>
      

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">انصراف</button>
       
      </div>
</div>
      </div>
                

            </div>
		</div>
    </form>
</body>
</html>
