using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Transactions;
using ErrorContext;
using System.Data.SqlClient;
using System.Data;
using Stock;

namespace Stock
{

    public partial class DAC
    {

        public Responsecompanydetails intitiallizeCompanyDetailsDAC(Requestcompanydetails request)
        {
            Responsecompanydetails response = new Responsecompanydetails();
            response.ErrorItem = new List<ErrorItem>();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    using (SqlConnection con = new SqlConnection(Connectionstring))
                    {
                        SqlCommand cmd = new SqlCommand("Select * from CompanyDetail", con);
                        //cmd.CommandType = CommandType.StoredProcedure;
                        //cmd.Parameters.Add("", SqlDbType.Int).Value = request.StockDetails.StartIndex;
                        //cmd.Parameters.Add("", SqlDbType.Int).Value = request.StockDetails.PageSize;
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            SqlDataAdapter sda = new SqlDataAdapter(cmd);
                            DataSet ds = new DataSet();
                            sda.Fill(ds);
                            if (ds != null)
                            {
                                response.dtcompanydetails = ds.Tables[0];
                                //response.dtproductname = ds.Tables[1];
                                //response.dtprodctsize = ds.Tables[2];
                                //response.dtstockdetails = ds.Tables[3];
                            }
                        }
                    }
                    scope.Complete();
                }
            }
            catch
            {
            }
            return response;

        }
    }
}
