using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ErrorContext;
namespace Stock
{
    public class AddStockDetailsentity
    {
        public string companycode { get; set; }
        public string companyname { get; set; }
        public DateTime? invoicedate { get; set; }
        public string incoiceno { get; set; }
        public string productcode { get; set; }
        public string productname { get; set; }
        public string productsize { get; set; }
        public Int32 productquantity { get; set; }
        public double priceperquntity { get; set; }
        public double totalamount { get; set; }
        public DateTime? date { get; set; }
        public string Createdby { get; set; }
        public DateTime? Createddate { get; set; }
        public string Modifiedby { get; set; }
        public DateTime? Modifieddate { get; set; }
        public int StartIndex { get; set; }
        public int PageSize { get; set; }
    }
    public class RequestAddStockDetails
    {
        public AddStockDetailsentity StockDetails { get; set; }
    }
    public class ResponseAddStockDetails
    {
        public DataTable dtstockdetails { get; set; }
        public DataTable dtcompanydetails { get; set; }
        public DataTable dtproductname { get; set; }
        public DataTable dtprodctsize { get; set; }
        public DataTable dtProductdetails { get; set; }
        public bool Result { get; set; }
        public List<ErrorItem> ErrorItem { get; set; }

    }
}
