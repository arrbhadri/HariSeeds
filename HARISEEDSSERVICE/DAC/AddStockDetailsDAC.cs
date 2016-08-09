using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ErrorContext;
using System.Transactions;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Stock
{
    public partial class DAC
    {
        //public string Connectionstring = ConfigurationSettings.AppSettings["myConnectionString"];

        string Connectionstring =
            System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        public ResponseAddStockDetails intitiallizestocksetailsDAC(RequestAddStockDetails request)
        {
            ResponseAddStockDetails response = new ResponseAddStockDetails();
            response.ErrorItem = new List<ErrorItem>();
            try
            {
                using (TransactionScope scope = new TransactionScope())
                {
                    using (SqlConnection con = new SqlConnection(Connectionstring))
                    {
                        SqlCommand cmd = new SqlCommand("", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("", SqlDbType.Int).Value = request.StockDetails.StartIndex;
                        cmd.Parameters.Add("", SqlDbType.Int).Value = request.StockDetails.PageSize;
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        sda.Fill(ds);
                        if (ds != null)
                        {
                            response.dtcompanydetails = ds.Tables[0];
                            response.dtproductname = ds.Tables[1];
                            response.dtprodctsize = ds.Tables[2];
                            response.dtstockdetails = ds.Tables[3];
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
