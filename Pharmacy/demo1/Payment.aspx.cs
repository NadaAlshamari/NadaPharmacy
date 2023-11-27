using Pharmacy.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharmacy.demo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                populatecblMedication();
                populatecblPaymentMethod();
                populategvPayment();


            }

        }
        
        protected void populatecblMedication()
        {

            CRUD myCrud = new CRUD();
            string mySql = @" SELECT [medicationId] ,medication+' / '+ CONVERT(varchar(10),sellPrice) +' SAR' as ConstAndName FROM [dbo].[medication]";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);                                     //.getDrPassSql(mySql);
            cblMedicationId.DataValueField = "medicationId";
            cblMedicationId.DataTextField = "ConstAndName";
            cblMedicationId.DataSource = dr;
            cblMedicationId.DataBind();


        }

        protected void populatecblPaymentMethod()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select paymentMethodId, paymentMethod
                          from paymentMethod";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);                                     //.getDrPassSql(mySql);
            cblPaymentMethodId.DataValueField = "paymentMethodId";
            cblPaymentMethodId.DataTextField = "paymentMethod";
            cblPaymentMethodId.DataSource = dr;
            cblPaymentMethodId.DataBind();
        }


        protected void btnPay_Click(object sender, EventArgs e)
        {
            string selectedCourses = "";
            int totalSelectedItems = 0;
            string employeeSelection = "";
            int counter = 0;

            foreach (ListItem item in cblMedicationId.Items)
            {
                if (item.Selected)
                {
                    totalSelectedItems += 1;
                }
            }
            for (int i = 0; i < cblMedicationId.Items.Count; i++)
            {
                if (cblMedicationId.Items[i].Selected)
                {
                    int empId = 0;
                    counter += 1;
                    empId = int.Parse(cblMedicationId.Items[i].Value);
                    for (int ii = 0; ii < cblPaymentMethodId.Items.Count; ii++)
                    {
                        if (cblPaymentMethodId.Items[ii].Selected)
                        {
                            int myActivityId = 0;
                            myActivityId = int.Parse(cblPaymentMethodId.Items[ii].Value);
                            //call method to regiser
                            registerEmp(empId, myActivityId);
                        }
                    }
                }
            }
        }
        protected void registerEmp(int mymedicationId, int mypaymentMethodId)
        {
            //selectedCourses += myEmployeeId + " " + myCourseName;
            //lblOutput.Text = selectedCourses;
            string mySql = @"INSERT INTO payment
                           (medicationId ,paymentMethodId )
                            VALUES(@medicationId,@paymentMethodId)";
            CRUD myCrud = new CRUD();
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@medicationId", mymedicationId);
            myPara.Add("@paymentMethodId", mypaymentMethodId);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
           // App_Code.common.PostMsg(lblOutput, rtn);//

           if (rtn >= 1)
              {
            lblOutput.Text = "SUCSEES OPERATION THNAK YOU FOR USING OUR PHARMACY";
            }
             else
              {
             lblOutput.Text = "OPERATION ! PLEASE TRY AGAIN";
             }

            GetgvPayment();

        }

        protected void GetgvPayment()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select p.PaymentId , m.medication , pm.paymentMethod
from medication m inner join Payment p on m.medicationId = p.medicationId
inner join paymentMethod pm on pm.paymentMethodId = p.paymentMethodId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvPayment.DataSource = dr;
            gvPayment.DataBind();
        }

        protected void populategvPayment()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select* from Payment";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvPayment.DataSource = dr;
            gvPayment.DataBind();
        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {

            GetgvPayment();

        }

       
    }
}