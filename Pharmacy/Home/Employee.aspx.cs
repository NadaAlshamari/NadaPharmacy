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
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populateddlPharmacy();
                populategvEmployee();
            }
        }

        protected void populateddlPharmacy()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select pharmacyId, pharmacyName 
                          from pharmacy";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);                                     //.getDrPassSql(mySql);
            ddlpharmacy.DataValueField = "pharmacyId";
            ddlpharmacy.DataTextField = "pharmacyName";
            ddlpharmacy.DataSource = dr;
            ddlpharmacy.DataBind();
        }
        protected void populategvEmployee() // اسم اللي ابي اسويه الميثود
        {

            CRUD myCrud = new CRUD();
            string mySql = @" select e.employeeId, e.employee, e.Country, e.age, e.PhoneNumber,e.gender,e.Position,p.pharmacyId,p.pharmacyName, p.city
                        from Employee e inner join pharmacy p on e.pharmacyId =p.pharmacyId
                         where p.pharmacyId= @pharmacyId";
            // سويت الجوين هنا مهو بالداتابيز
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@pharmacyId", ddlpharmacy.SelectedItem.Value); // سويت الدكشنري عشان فيه where
            SqlDataReader dr = myCrud.getDrPassSql(mySql, myPara);                                     //.getDrPassSql(mySql);
            gvEmployee.DataSource = dr;
            gvEmployee.DataBind();

        }

        protected void btnChoose_Click(Object sender, EventArgs e)
        {

            // write code to pull inf from database
            populategvEmployee();

        }

        protected void gvEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
