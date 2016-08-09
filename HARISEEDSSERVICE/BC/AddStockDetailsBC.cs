using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ErrorContext;

namespace Stock
{
    public partial class BC
    {
        public ResponseAddStockDetails intitiallizestocksetailsBC(RequestAddStockDetails request)
        {
            ResponseAddStockDetails response = new ResponseAddStockDetails();
            response.ErrorItem = new List<ErrorItem>();
            DAC dac = new DAC();
            response = dac.intitiallizeCompanyDetailsDAC(request);
            return response;
        }

    }
}
