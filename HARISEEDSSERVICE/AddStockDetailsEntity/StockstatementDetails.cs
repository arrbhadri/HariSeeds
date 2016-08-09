using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ErrorContext;

namespace Stock
{
    public class StockstatementDetails
    {
        public string companycode { get; set; }
        public string companyname { get; set; }
        public string Createdby { get; set; }
        public DateTime? Createddate { get; set; }
        public string Modifiedby { get; set; }
        public DateTime? Modifieddate { get; set; }
        public int StartIndex { get; set; }
        public int PageSize { get; set; }
    }
    public class Requeststockstatementdetails
    {
        public StockstatementDetails StockDetails { get; set; }
    }
    public class Responsestockstatementdetails
    {
        public DataTable dtstockdetails { get; set; }
        public bool Result { get; set; }
        public List<ErrorItem> ErrorItem { get; set; }

    }

}
