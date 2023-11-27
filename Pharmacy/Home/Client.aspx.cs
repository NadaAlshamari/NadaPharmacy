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
    public partial class Client : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)

        {
            if (Page.IsPostBack)
            {
                populategvClient();

            }


        }
        
        protected void populategvClient()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select ClientId ,fName, lName,Gender,age,Phone,email,Country,City,address from Client";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvClient.DataSource = dr;
            gvClient.DataBind();
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            //validate user entry
            string strFname = txtfName.Text;
                if (string.IsNullOrEmpty(strFname))
            {
                lblOutput.Text = "PLEASE ENTER YOUR FIRST NAME!";
                return;
            }
            CRUD myCrud = new CRUD();
            string mySql = @" insert Client  ( fName, lName,Gender,age,Phone,email,Country,City,address) 
                                 values( @fName, @lName,@Gender,@age,@Phone,@email,@Country,@City,@address)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@fName", txtfName.Text);
            myPara.Add("@lName", txtlName.Text);
            myPara.Add("@Gender",txtGender.Text);
            myPara.Add("@age", txtage.Text);
           myPara.Add("@phone", txtphone.Text);
            myPara.Add("@email", txtemail.Text);
            myPara.Add("@Country", txtCountry.Text);
            myPara.Add("@City", txtCity.Text);
             myPara.Add("@address",txtaddress.Text);

            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            { lblOutput.Text = "SUCSEES OPERATION !"; }
            else
            { lblOutput.Text = "FAILED OPERATION!"; }
            //populategvClient();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @" update Client set fName=@fName, lName=@lName, Gender=@Gender,age=@age,phone=@Phone,email=@email,Country=@Country,City=@City,address=@address
                              where ClientId = @Clientid";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@ClientId", txtClientId.Text);
            myPara.Add("@fName", txtfName.Text);
            myPara.Add("@lName", txtlName.Text);
            myPara.Add("@Gender", txtGender.Text);
            myPara.Add("@age", txtage.Text);
            myPara.Add("@phone", txtphone.Text);
            myPara.Add("@email", txtemail.Text);
            myPara.Add("@Country", txtCountry.Text);
            myPara.Add("@City", txtCity.Text);
            myPara.Add("@address",txtaddress.Text);

            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            { lblOutput.Text = "SUCSEES OPERATION !"; }
            else
            { lblOutput.Text = "FAILED OPERATION !"; } 
            populategvClient();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @" Delete Client 
                              where ClientId = @Clientid";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@ClientId", txtClientId.Text);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            { lblOutput.Text = "SUCSEES OPERATION !"; }
            else
            { lblOutput.Text = "FAILED OPERATION !"; }
            populategvClient();
       

        }

        protected void txtCountry_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtaddress_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

