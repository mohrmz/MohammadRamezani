<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Price.aspx.cs" Inherits="price" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <meta property="og:title" content="قیمت و تعرفه سایت و برنامه نویسی | تحویل فوری سایت |طراحی سایت ارزان قیمت" />
    <meta name="title" content="قیمت و تعرفه سایت و برنامه نویسی | تحویل فوری سایت |طراحی سایت ارزان قیمت">

    <meta name="description" content="لیست قیمت و تعرفه برنامه نویسی و طراحی سایت ها استاتیک و داینامیک و برنامه نویسی گوشی و تلفن همراه">
    <meta property="og:description" content="لیست قیمت و تعرفه برنامه نویسی و طراحی سایت ها استاتیک و داینامیک و برنامه نویسی گوشی و تلفن همراه" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    
    <!-- Grid for pricing tables -->
    <h3 class="w3-padding-16" style="color:#fec467">قیمت ها</h3>
    <div class="w3-row-padding" style="margin:0">
      <div class="w3-half w3-margin-bottom">
        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
		<li class=" w3-medium w3-padding-5" style="background:#fefbd8">وب سایت</li>
          <li class=" w3-xlarge w3-padding-32" style="background:#feb236">ابتدایی</li>
          <li class="w3-padding-16"> طراحی وب سایت استایتک</li>
          <li class="w3-padding-16">مدیریت محتوا</li>
          <li class="w3-padding-16">هاست با مدت محدود</li>
		  <li class="w3-padding-16">دامین اختصاصی .ir</li>
		  <li class="w3-padding-16">تحویل فوری یک هفته ای</li>
          <li class="w3-padding-16">پشتیبانی محدود</li>
          <li class="w3-padding-16">
            <h2>3 میلیون تومان</h2>
            <span class="w3-opacity">پشتیبانی یک ماهه</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a title="call" class="w3-button w3-white w3-padding-large w3-hover-black" href="#contact"> تماس جهت کسب اطلاعات</a>
              <div> <asp:LinkButton class="w3-button w3-white w3-padding-large w3-hover-black" runat="server" ID="btnAddShirt" OnClick="btnAddsite_Click">افزودن به سبد خرید</asp:LinkButton></div>
          </li>
        </ul>
      </div>

      <div class="w3-half">
        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
		<li class="w3-medium w3-padding-5" style="background:#fefbd8">وب سایت</li>
          <li class="w3-xlarge w3-padding-32" style="background:#feb236">حرفه ای</li>
          <li class="w3-padding-16">طراحی وب سایت فروشگاه انلاین ، سایت های خبری ، شرکتی</li>
		  <li class="w3-padding-16">پنل های مدیریتی و گزارش گیری</li>
		  <li class="w3-padding-16"> بگار گیری تکنیک های حرفه ای هوش تجاری</li>
          <li class="w3-padding-16">بهینه سازی و مدیریت محتوا و افزایش رتبه بندی در موتور های جستجوگر</li>
          <li class="w3-padding-16">هاست و دامنه اختصاصی و برقراری امینت</li>
          <li class="w3-padding-16">پشتیبانی نامحدود 24 ساعته</li>
          <li class="w3-padding-16">
            <h2>بسته به نوع پروژه</h2>
            <span class="w3-opacity">پیش قرار داد 1 میلیون تومان</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a title="call" class="w3-button w3-white w3-padding-large w3-hover-black" href="#contact">تماس جهت کسب اطلاعات</a>
             <div> <asp:LinkButton class="w3-button w3-white w3-padding-large w3-hover-black" runat="server" ID="LinkButton2" OnClick="btnAddbsite_Click">افزودن به سبد خرید</asp:LinkButton></div>

              </li>
        </ul>
		
      </div>
        </div>
	    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-half w3-margin-bottom">
        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
		<li class="w3-medium w3-padding-5" style="background:#fefbd8">موبایل</li>
          <li class="w3-xlarge w3-padding-32" style="background:#feb236">برنامه نویسی نرم افزار های تلفن همراه</li>
          <li class="w3-padding-16">  طراحی رابط کاربری و برنامه نویسی سمت سرور</li>
          <li class="w3-padding-16">Cross platfrom( Android , IOS , UWP)</li>
          <li class="w3-padding-16">ایجاد درگاه های پرداخت و ارتباط با بانک و ...</li>
		  <li class="w3-padding-16">پیاده سازی صفر تا صد پروژه اعم از خرید تجهیزات و ...</li>
		  <li class="w3-padding-16">ایمن سازی و گرفتن تست امنیتی ازنهاد های مربوطه</li>
          <li class="w3-padding-16">پشتیبانی 24 ساعته</li>
          <li class="w3-padding-16">
            <h2>بسته به نوع پروژه</h2>
            <span class="w3-opacity">پیش قرار داد 1 میلیون تومان</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a title="call" class="w3-button w3-white w3-padding-large w3-hover-black" href="#contact">تماس جهت کسب اطلاعات</a>
                  <div> <asp:LinkButton class="w3-button w3-white w3-padding-large w3-hover-black" runat="server" ID="LinkButton3" OnClick="btnAddmobile_Click">افزودن به سبد خرید</asp:LinkButton></div>

          </li>
        </ul>
      </div>

      <div class="w3-half">
        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
		<li class="w3-medium w3-padding-5" style="background:#fefbd8">Desktop</li>
          <li class="w3-xlarge w3-padding-32" style="background:#feb236">برنامه نویسی نرم افزار مالی و ERP و ...</li>
          <li class="w3-padding-16">crossplatform (MAC,Windows,Linux)</li>
		  <li class="w3-padding-16">امکان برنامه نویسی به صورت 3 لایه و افزایش امینت و مدیریت برنامه سمت سرور</li>
		  <li class="w3-padding-16"> ایجاد قابلیت گزارش گیری انلاین</li>
          <li class="w3-padding-16">بهینه سازی کد های برنامه نویسی و سمت سرور و کاهش حجم و بار سرور و کاهش هزینه تا 10 برابر</li>
          <li class="w3-padding-16">برقراری امنیت دیتابیس و نرم افزار</li>
          <li class="w3-padding-16">پشتیبانی نامحدود 24 ساعته</li>
          <li class="w3-padding-16">
            <h2>بسته به نوع پروژه</h2>
            <span class="w3-opacity">پیش قرار داد 1 میلیون تومان</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a title="call" class="w3-button w3-white w3-padding-large w3-hover-black" href="#contact">تماس جهت کسب اطلاعات</a>
                  <div> <asp:LinkButton class="w3-button w3-white w3-padding-large w3-hover-black" runat="server" ID="LinkButton4" OnClick="btnAdderp_Click">افزودن به سبد خرید</asp:LinkButton></div>

          </li>
        </ul>
                      <asp:LinkButton class="w3-button w3-xxlarge w3-round-xxlarge fa fa-shopping-cart" style="position:fixed!important;left:20px!important;bottom:30px!important;background:#feb236!important;color:white!important" runat="server" ID="Button3" Text="" OnClick="btncart_Click" ></asp:LinkButton>
      </div>
	 </div>
    <!-- End Grid/Pricing tables -->
<div />
</asp:Content>

