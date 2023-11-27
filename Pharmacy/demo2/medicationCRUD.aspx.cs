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
    public partial class medicationCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        CRUD myCrud = new CRUD();
        string mySql = @" insert INTO medication (medication ,medicationNumber,sellPrice) 
                                 values(@medication,@medicationNumber,@sellPrice)";
        Dictionary<string, object> myPara = new Dictionary<string, object>();
        myPara.Add("@medication", txtmedication.Text);
            myPara.Add("@medicationNumber", txtmedicationNumber.Text);
            myPara.Add("@sellPrice", txtsellPrice.Text);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
        if (rtn >= 1)
        { lblOutput.Text = "Success Operation"; }
        else
        { lblOutput.Text = "Failed Operation"; }
        populategvmedication();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        CRUD myCrud = new CRUD();
        string mySql = @"  update medication 
                              set medication = @medication ,medicationNumber=@medicationNumber, sellPrice=@sellPrice
                              where medicationId = @medicationId";
        Dictionary<string, object> myPara = new Dictionary<string, object>();
        myPara.Add("@medication", txtmedication.Text);
            myPara.Add("@medicationNumber", txtmedicationNumber.Text);
            myPara.Add("@sellPrice", txtsellPrice.Text);
            myPara.Add("@medicationId",txtmedicationId.Text); // convert 
        int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
        if (rtn >= 1)
        { lblOutput.Text = "Success Operation"; }
        else
        { lblOutput.Text = "Failed Operation"; }
        populategvmedication();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        CRUD myCrud = new CRUD();
        string mySql = @" delete medication  
                              where medicationId = @medicationId";
        Dictionary<string, object> myPara = new Dictionary<string, object>();
        myPara.Add("@medicationId", int.Parse(txtmedicationId.Text)); // convert 
        int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
        if (rtn >= 1)
        { lblOutput.Text = "Success Operation"; }
        else
        { lblOutput.Text = "Failed Operation"; }
        populategvmedication();
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
         populategvmedication();
    }

    protected void populategvmedication()
    {
        CRUD myCrud = new CRUD();
        string mySql = @"select medicationId ,medicationNumber, medication, sellPrice from medication";
        SqlDataReader dr = myCrud.getDrPassSql(mySql);
        gvmedication.DataSource = dr;
        gvmedication.DataBind();
    }
}
}