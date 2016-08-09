using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HariSeedsWeb
{
    public partial class AddStockDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Emptygrid();
            }
        }
        public void Emptygrid()
        {
            DataTable data = new DataTable();
            data.Columns.Add("PRODUCT NAME",typeof (string));
            data.Columns.Add("PRODUCT SIZE", typeof(string));
            data.Columns.Add("PRODUCT QUANTITY", typeof(string));
            data.Columns.Add("TOTAL AMONT", typeof(string));
            ViewState["PRODUCTDETAILS"] = data;
            Griddetails.DataSource = data;
            Griddetails.DataBind();
        }

        protected void Griddetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void Griddetails_DataBinding(object sender, EventArgs e)
        //{
            
        //    //Griddetails.DataSource = (DataTable)ViewState["PRODUCTDETAILS"];
            
        //}

    }
}