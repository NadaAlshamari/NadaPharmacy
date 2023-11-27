using Pharmacy.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharmacy.Home
{
    public partial class Brand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack);

        }
      
        protected void populategvBrand() // اسم اللي ابي اسويه الميثود
        {

            CRUD myCrud = new CRUD();
            string mySql = @" select brandId,brandName,brandDiscription,License,phone from Brand ";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);                                     //.getDrPassSql(mySql);
            gvBrand.DataSource = dr;
            gvBrand.DataBind();

        }

       
        protected void gvClient_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    

protected void btnView_Click(object sender, EventArgs e)
        {
    populategvBrand();
}
    }
}
