using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class price : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddsite_Click(object sender, EventArgs e)
    {

        ShoppingCart.Instance.AddItem(1);


        Response.Redirect("ViewCart.aspx");
    }
    protected void btnAddbsite_Click(object sender, EventArgs e)
    {
        ShoppingCart.Instance.AddItem(2);
        Response.Redirect("ViewCart.aspx");
    }

    protected void btnAddmobile_Click(object sender, EventArgs e)
    {
        ShoppingCart.Instance.AddItem(3);
        Response.Redirect("ViewCart.aspx");
    }
    protected void btnAdderp_Click(object sender, EventArgs e)
    {
        ShoppingCart.Instance.AddItem(4);
        Response.Redirect("ViewCart.aspx");
    }
    protected void btncart_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCart.aspx");
    }

}