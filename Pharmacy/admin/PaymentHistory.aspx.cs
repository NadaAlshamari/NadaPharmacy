using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharmacy.admin
{
    public partial class PaymentHistory : System.Web.UI.Page
    {


        public static string conStr = WebConfigurationManager.ConnectionStrings["PharmacyConnectionString"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {

            ShowData();
        }



        protected void ShowData()
        {

            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter adapt = new SqlDataAdapter(@"SELECT 
p.PaymentId, m.medication, m.sellPrice, pm.paymentMethod
  FROM [dbo].[payment]  p
join medication m
on m.medicationId = p.medicationId

join paymentMethod pm
on pm.paymentMethodId = p.paymentMethodId", con);
            con.Open();
            adapt.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                gvGetPayments.DataSource = dt;
                gvGetPayments.DataBind();
            }
        }




    }
}