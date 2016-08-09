using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Stock;
using ErrorContext;

namespace BC
{
    public partial class BC
    {
        public Responsecompanydetails intitiallizeCompanyDetailsBC(Requestcompanydetils request)
        {
            Responsecompanydetails response = new Responsecompanydetails();
            response.ErrorItem = new List<ErrorItem>();
            DAC dac = new DAC();
            response = dac.intitiallizeCompanyDetailsDAC(request);
            return response;
        }

    }
}

