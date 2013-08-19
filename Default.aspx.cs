using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEquals_Click(object sender, EventArgs e)
    {
        try
        {
            int num1;
            int num2;
            num1 = int.Parse(txtNo1.Text);
            num2 = int.Parse(txtNo2.Text);
            lblResult.Text = (num1 + num2).ToString();
        }
        catch(Exception ex)
        {
            lblResult.Text = ex.Message.ToString();
        }
    }
}