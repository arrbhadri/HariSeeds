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
    public partial class AddStockDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Emptygrid();
                Initialize();
            }
        }
        public void Emptygrid()
        {
            DataTable data = new DataTable();
            DataRow dr;
            data.Columns.Add("ProductName", typeof(string));
            data.Columns.Add("ProductSize", typeof(string));
            data.Columns.Add("ProductQuantity", typeof(string));
            data.Columns.Add("TotalAmount", typeof(string));
            data.AcceptChanges();

            dr = data.NewRow();
            data.Rows.Add(dr);
            //saving databale into viewstate   
            ViewState["PRODUCTDETAILS"] = data;
            Griddetails.DataSource = data;
            Griddetails.DataBind();
        }

        protected void Griddetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void Initialize()
        {
            RequestAddStockDetails request = new RequestAddStockDetails();
            request.StockDetails = new AddStockDetailsentity();
            ResponseAddStockDetails response = new ResponseAddStockDetails();
            BC bc = new BC();
            bc.intitiallizestocksetailsBC(request);

        }
        public void Addstock()
        {
        }
        public void delete()
        {
        }
        

    }
}