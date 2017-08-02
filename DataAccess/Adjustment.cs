using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DataAccess
{
    public class Adjustment
    {
        public DataTable GetDropDownValues()
        {
            string conStr = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            DataTable table = new DataTable();
            using (SqlConnection connection = new SqlConnection(conStr))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand("[dbo].[uspGetAdjustmentDropDownValues]", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        connection.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            //if (reader.HasRows)
                            //{
                            //    while (reader.Read())
                            //    {
                            //    }
                            //}
                            table.Load(reader);
                        }
                    }
                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine(sqlEx.Message);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }           
            return table;
        }
    }
}