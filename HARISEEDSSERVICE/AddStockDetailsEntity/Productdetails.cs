using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ErrorContext;

namespace Stock
{
    public class Productdetails
    {
        public string Productcode { get; set; }
        public string Producname { get; set; }
        public string Productsize { get; set; }
        public string Productquantity { get; set; }
        public string Priceperquantity { get; set; }
        public string Createdby { get; set; }
        public DateTime? Createddate { get; set; }
        public string Modifiedby { get; set; }
        public DateTime? Modifieddate { get; set; }
        public int StartIndex { get; set; }
        public int PageSize { get; set; }
    }

    public class Requestproductdetais
    {
        public Productdetails reqproducts { get; set; }
    }
    public class Responseproductdetils
    {
        public DataTable dtproductname { get; set; }
        public DataTable dtprodctsize { get; set; }
        public DataTable dtProductdetails { get; set; }
        public bool Result { get; set; }
        public List<ErrorItem> ErrorItem { get; set; } 
    }
}
