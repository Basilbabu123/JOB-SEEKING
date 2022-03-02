using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company_inbox : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.fillds("select * from messeges where [to] = '" + Session["uname"].ToString() + "'");
        msgs.DataSource = con.ds;
        msgs.DataBind();
    }
}