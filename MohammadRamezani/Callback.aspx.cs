using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class Callback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var collection = HttpUtility.ParseQueryString(this.ClientQueryString);
        String Status = collection["Status"];


        if (Status != "OK")
        {
            Response.Write("<script>alert('عملیات  ناموفق')</script>");
            return;
        }



        var zarinpal = ZarinPal.ZarinPal.Get();
        zarinpal.EnableSandboxMode();
        String Authority = collection["Authority"];
        String MerchantID = "1bff2c14-4b3c-11e9-a56c-000c29344814";
        long Amount = 100;

        int bb = Convert.ToInt32(Session["num"].ToString());

        var verificationRequest = new ZarinPal.PaymentVerification(MerchantID, Amount, Authority);
        var verificationResponse = zarinpal.InvokePaymentVerification(verificationRequest);
        if (verificationResponse.Status == 100)
        {
            message.InnerText = "پرداخت موفقیت آمیز بود";
            message.Style.Add("color","green");
            message.InnerText = "شماره پیگیری : " + bb.ToString();
            message.InnerText = "نام : " + Session["name"].ToString();
            message.InnerText = "نام خانوادگی : " + Session["price"].ToString();
            message.InnerText = "شماره تماس : " + Session["phone"].ToString();
            message.InnerText = verificationResponse.RefID.ToString();
            
            data aa = new data();
            aa.Id = bb;
            aa.Price = Convert.ToInt64(Session["price"].ToString());
            aa.Description = Session["des"].ToString();
            JsonSerializer serializer = new JsonSerializer();
            string b = JsonConvert.SerializeObject(aa);
            System.IO.File.WriteAllText("json.json", b);
        }
        else
        {

            message.InnerText = "پرداخت ناموفق";
            message.Style.Add("color", "red");
            message.InnerText = "خطا : " + verificationResponse.RefID+"-"+ verificationResponse.Status;

        }
    }
}