using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using System.Data;

namespace SalesReportingWebsite
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDropDownItem();
        }

        private void GetDropDownItem()
        {
            Adjustment adj = new Adjustment();
            DataTable table = adj.GetDropDownValues();
            List<ListItem> listperiod = new List<ListItem>();
            foreach (string data in table.Rows[0]["PeriodList"].ToString().Split(','))
            {
                listperiod.Add(new ListItem(data, data));
            }
            Period.Items.AddRange(listperiod.ToArray());

            List<ListItem> listAdjustmentType = new List<ListItem>();
            foreach (string data in table.Rows[0]["AdjustmentTypeList"].ToString().Split(','))
            {
                listAdjustmentType.Add(new ListItem(data, data));
            }
            AdjustmentType.Items.AddRange(listAdjustmentType.ToArray());

            List<ListItem> listCountryName = new List<ListItem>();
            foreach (string data in table.Rows[0]["CountryNameList"].ToString().Split(','))
            {
                listCountryName.Add(new ListItem(data, data));
            }
            CountryName.Items.AddRange(listCountryName.ToArray());

            List<ListItem> listSubBusinessUnit = new List<ListItem>();
            foreach (string data in table.Rows[0]["SubBusinessUnitList"].ToString().Split(','))
            {
                listSubBusinessUnit.Add(new ListItem(data, data));
            }
            SubBusiessUnitName.Items.AddRange(listSubBusinessUnit.ToArray());

            List<ListItem> listCompanyName = new List<ListItem>();
            foreach (string data in table.Rows[0]["CompanyNameList"].ToString().Split(','))
            {
                listCompanyName.Add(new ListItem(data, data));
            }
            CompanyName.Items.AddRange(listCompanyName.ToArray());

            List<ListItem> listSubSegmentName = new List<ListItem>();
            foreach (string data in table.Rows[0]["SubSegmentNameList"].ToString().Split(','))
            {
                listSubSegmentName.Add(new ListItem(data, data));
            }
            SubSegmentName.Items.AddRange(listSubSegmentName.ToArray());

            List<ListItem> listAccountSubTypeName = new List<ListItem>();
            foreach (string data in table.Rows[0]["AccountSubTypeNameList"].ToString().Split(','))
            {
                listAccountSubTypeName.Add(new ListItem(data, data));
            }
            AccountSubTypeName.Items.AddRange(listAccountSubTypeName.ToArray());

            List<ListItem> listSubCategoryName = new List<ListItem>();
            foreach (string data in table.Rows[0]["SubCategoryNameList"].ToString().Split(','))
            {
                listSubCategoryName.Add(new ListItem(data, data));
            }
            SubCategoryName.Items.AddRange(listSubCategoryName.ToArray());
        }
    }
}


