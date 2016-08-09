using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Stock;

namespace HariSeedsWeb
{
    public partial class Addstockdetailsss : System.Web.UI.Page
    {
        public DataTable stock = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            Emptygrid();
        }

        public void Emptygrid()
        {
            DataTable data = new DataTable();
            DataRow dr;
            data.Columns.Add("PRODUCT NAME", typeof(string));
            data.Columns.Add("PRODUCT SIZE", typeof(string));
            data.Columns.Add("PRODUCT QUANTITY", typeof(string));
            data.Columns.Add("TOTAL AMOUNT", typeof(string));
            stock.AcceptChanges();
            
            dr = data.NewRow();
            data.Rows.Add(dr);
            //saving databale into viewstate   
            ViewState["PRODUCTDETAILS"] = data;
            Griddetails.DataSource = data;
            Griddetails.DataBind();  
            //return stock;
        }

        public void Initialize()
        {
            RequestAddStockDetails request = new RequestAddStockDetails();
            request.StockDetails = new AddStockDetailsentity();
        }

        protected void Griddetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}