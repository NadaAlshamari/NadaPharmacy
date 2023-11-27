using Pharmacy.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharmacy.homeo
{
    public partial class client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) // run this code only one time for each user
            {
                populateGvclient();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        protected void populateGvclient()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select * from client";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            Gvclient.DataSource = dr;
            Gvclient.DataBind();
        }
        protected void btnExportToExcel_Click(object sender, EventArgs e)
        {
            // execute code to export to excel
            ExportGridToExcel(Gvclient);

        }
        public void ExportGridToExcel(GridView grd)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grd.AllowPaging = false;
            populateGvclient();
            grd.RenderControl(hw);
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }

        protected void btnShowMyName_Click(object sender, EventArgs e)
        {
            lblOutput.Text = "Ali";
        }
    }// cls
}//ns