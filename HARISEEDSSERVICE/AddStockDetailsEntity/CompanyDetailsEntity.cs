using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ErrorContext;

namespace Stock
{
    public class CompanyDetailsEntity
    {
        public string Companycode { get; set; }
        public string Companyname { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public Int16 Pincode { get; set; }
        public string Createdby { get; set; }
        public DateTime? Createddate { get; set; }
        public string Modifiedby { get; set; }
        public DateTime? Modifieddate { get; set; }
        public int StartIndex { get; set; }
        public int PageSize { get; set; }
    }
    public class Requestcompanydetails
    {
        public CompanyDetailsEntity companydetails { get; set; }
    }
    public class Responsecompanydetails
    {
        public DataTable dtstockdetails { get; set; }
        public DataTable dtcompanydetails { get; set; }
        public bool Result { get; set; }
        public List<ErrorItem> ErrorItem { get; set; }
    }
}
