using SmsIrRestful;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using ZarinPal;

public partial class ViewCart : System.Web.UI.Page
{
    int bb;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random a = new Random(1000);
        bb = a.Next();
        Session["num"] = bb;
        if (!IsPostBack)
			BindData();
    }

	protected void BindData() {

		gvShoppingCart.DataSource = ShoppingCart.Instance.Items;
		gvShoppingCart.DataBind();
	}

	protected void gvShoppingCart_RowDataBound(object sender, GridViewRowEventArgs e) {

		if (e.Row.RowType == DataControlRowType.Footer) {
			e.Row.Cells[3].Text = "Total: " + ShoppingCart.Instance.GetSubTotal().ToString("");
		}
	}


	protected void gvShoppingCart_RowCommand(object sender, GridViewCommandEventArgs e) {
		if (e.CommandName == "Remove") {
			int productId = Convert.ToInt32(e.CommandArgument);
			ShoppingCart.Instance.RemoveItem(productId);
		}


		BindData();
	}

    protected void btnUpdateCart_Click(object sender, EventArgs e) {
        foreach (GridViewRow row in gvShoppingCart.Rows) {
            if (row.RowType == DataControlRowType.DataRow) {

                try {

                    int productId = Convert.ToInt32(gvShoppingCart.DataKeys[row.RowIndex].Value);

                    int quantity = int.Parse(((TextBox)row.Cells[1].FindControl("txtQuantity")).Text);
                    ShoppingCart.Instance.SetItemQuantity(productId, quantity);
                } catch (FormatException) { }
            }
        }



        BindData();
    }
        protected void btnpay_Click(object sender, EventArgs e)
        {

        ZarinPal.ZarinPal zarinpal = ZarinPal.ZarinPal.Get();
        String MerchantID = "1bff2c14-4b3c-11e9-a56c-000c29344814";
        String CallbackURL = "http://mohammadramezani.ir/Callback.aspx";
        long Amount = Convert.ToInt64(ShoppingCart.Instance.GetSubTotal().ToString());
        String Description = txtname.Value + "-"+txtlast.Value+"-"+txtphone.Value;
        Session["name"] = txtname.Value;
        Session["last"] = txtlast.Value;
        Session["phone"] = txtphone.Value;
        Session["des"] = txtname.Value + "-" + txtlast.Value + "-" + txtphone.Value;
        Session["price"] = Convert.ToInt64(ShoppingCart.Instance.GetSubTotal().ToString());
    

        ZarinPal.PaymentRequest pr = new ZarinPal.PaymentRequest(MerchantID, Amount, CallbackURL, Description);


        zarinpal.DisableSandboxMode();
        var res = zarinpal.InvokePaymentRequest(pr);
        if (res.Status == 100)
        {
            Response.Redirect(res.PaymentURL);
        }

   
    }

}

