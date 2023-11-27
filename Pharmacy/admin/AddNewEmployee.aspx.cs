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
    public partial class AddNewEmployee : System.Web.UI.Page
    {
        public static string conStr = WebConfigurationManager.ConnectionStrings["PharmacyConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
             
            if (!Page.IsPostBack)
            {

                ddlPharmacyId.DataValueField = "PharmacyId";
                ddlPharmacyId.DataTextField = "PharmacyName";
                ddlPharmacyId.DataSource = GetPharmacies();
                ddlPharmacyId.DataBind();
            }
        }
       
        // Getting Data from DB
        public static List<PharmacyDropDownList> GetPharmacies()
        {
            List<PharmacyDropDownList>   pharmacyDrops = new List<PharmacyDropDownList>();
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("select pharmacyId, pharmacyName from pharmacy", con);
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    PharmacyDropDownList pharmacy = new PharmacyDropDownList();
                    pharmacy.PharmacyId = Convert.ToInt32(rdr["pharmacyId"]);
                    pharmacy.PharmacyName = rdr["pharmacyName"].ToString();
  

                    pharmacyDrops.Add(pharmacy);
                }
                con.Close();
            }
            return pharmacyDrops;


        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            
                ShowData();
          
        }
            protected void ShowData()
            {
             
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection(conStr);
                SqlDataAdapter adapt = new SqlDataAdapter(@"SELECT [employeeId],
[employee] Employee
      ,[age] Age
      ,[PhoneNumber]
      ,[gender] Gender
      ,[Position]
      ,[Salary]
      ,[nationality] Nationality
      ,[Country]
      , e.[City] EmployeeCity
      , e.[address] EmployeeAddress
      , p.address PhacmacyAddress,
      p.pharmacyName PharmacyName,
      p.city PharmacyCity
  FROM[dbo].[Employee] e
  join pharmacy p
  on e.pharmacyId = p.pharmacyId order by employeeid", con);
                con.Open();
                adapt.Fill(dt);
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    gvGetEmployees.DataSource = dt;
                    gvGetEmployees.DataBind();
                }
            }
            
       

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
       var employee        = txtName.Text;   
       var pharmacyId      =  Convert.ToInt32 (ddlPharmacyId.SelectedValue);
       var age             = txtAge.Text;
       var PhoneNumber     = txtPhone.Text;
       var gender          = ddlGender.SelectedValue;
       var Position        = txtPosition.Text;
       var Salary          = txtSalary.Text;
       var nationality     = txtNationality.Text;
       var Country         = txtCountry.Text;
       var City            = txtCity.Text;
       var address          =         txtAddress.Text;
             
           
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO[dbo].[Employee] ([employee],[pharmacyId],[age],[PhoneNumber],[gender],[Position],[Salary],[nationality],[Country],[City],[address]) VALUES(@employee,@pharmacyId,@age,@PhoneNumber,@gender,@Position,@Salary,@nationality,@Country,@City,@address)", con);
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@employee",   employee     );
                    cmd.Parameters.AddWithValue("@pharmacyId", pharmacyId   );
                    cmd.Parameters.AddWithValue("@age",        age          );
                    cmd.Parameters.AddWithValue("@PhoneNumber",PhoneNumber  );
                    cmd.Parameters.AddWithValue("@gender",     gender          );
                    cmd.Parameters.AddWithValue("@Position",   Position        );
                    cmd.Parameters.AddWithValue("@Salary",     Salary          );
                    cmd.Parameters.AddWithValue("@nationality",nationality      );
                    cmd.Parameters.AddWithValue("@Country",    Country          );
                    cmd.Parameters.AddWithValue("@City",       City                );
                    cmd.Parameters.AddWithValue("@address", address);
                

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                ShowData();
                }

             
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {


            bool res;
            int a;
            string myStr = txtEmpId.Text;
            res = int.TryParse(myStr, out a);

            if (res)
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("delete from [dbo].[Employee] where employeeid = @employeeid", con);
                    cmd.CommandType = CommandType.Text;
                    var empid = Convert.ToInt32(myStr);
                    cmd.Parameters.AddWithValue("@employeeid", empid);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                txtEmpId.Text = "";
                 ShowData();
            }
           


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {


            bool res;
            int a;
            string myStr = txtEmpId.Text;
            res = int.TryParse(myStr, out a);

            if (res)
            {

                var employee = txtName.Text;
                var pharmacyId = Convert.ToInt32(ddlPharmacyId.SelectedValue);
                var age = txtAge.Text;
                var PhoneNumber = txtPhone.Text;
                var gender = ddlGender.SelectedValue;
                var Position = txtPosition.Text;
                var Salary = txtSalary.Text;
                var nationality = txtNationality.Text;
                var Country = txtCountry.Text;
                var City = txtCity.Text;
                var address = txtAddress.Text;

                var empid = Convert.ToInt32(myStr);

                using (SqlConnection con = new SqlConnection(conStr))
                {
                    SqlCommand cmd = new SqlCommand("update [dbo].[Employee] set [employee]= @employee,[pharmacyId]=@pharmacyId,[age]=@age,[PhoneNumber]=@PhoneNumber,[gender]=@gender,[Position]=@Position,[Salary]=@Salary,[nationality]=@nationality,[Country]=@Country,[City]=@City,[address]=@address where employeeid = @employeeid", con);
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@employeeid", empid);
                    cmd.Parameters.AddWithValue("@employee", employee);
                    cmd.Parameters.AddWithValue("@pharmacyId", pharmacyId);
                    cmd.Parameters.AddWithValue("@age", age);
                    cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
                    cmd.Parameters.AddWithValue("@gender", gender);
                    cmd.Parameters.AddWithValue("@Position", Position);
                    cmd.Parameters.AddWithValue("@Salary", Salary);
                    cmd.Parameters.AddWithValue("@nationality", nationality);
                    cmd.Parameters.AddWithValue("@Country", Country);
                    cmd.Parameters.AddWithValue("@City", City);
                    cmd.Parameters.AddWithValue("@address", address);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                 ShowData();


            }
            else
            {
           

            }



        }
 
        protected void txtUpdateEmpId_TextChanged(object sender, EventArgs e)
        {
            bool res;
            int a;
            string myStr = txtEmpId.Text;
            res = int.TryParse(myStr, out a);

            if (res == true)
            {
 
                List<EmployeeVM> employeeVMs = new List<EmployeeVM>();
                SqlConnection con = new SqlConnection(conStr);


                var empid = Convert.ToInt32(myStr);
                SqlCommand cmd = new SqlCommand("select * from [dbo].[Employee] where employeeid = @employeeid", con);
                cmd.Parameters.AddWithValue("@employeeid", empid);
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    EmployeeVM employee = new EmployeeVM();



                    employee.employeeId = Convert.ToInt32(rdr["employeeId"]);
                    employee.employee = rdr["employee"].ToString();
                    employee.pharmacyId = Convert.ToInt32(rdr["pharmacyId"]);
                    employee.age = Convert.ToInt32(rdr["age"]);
                    employee.PhoneNumber = Convert.ToInt32(rdr["PhoneNumber"]);
                    employee.gender = rdr["gender"].ToString();
                    employee.Position = rdr["Position"].ToString();
                    employee.Salary = Convert.ToInt32(rdr["Salary"]);
                    employee.nationality = rdr["nationality"].ToString();
                    employee.Country = rdr["Country"].ToString();
                    employee.City = rdr["City"].ToString();
                    employee.address = rdr["address"].ToString();




                    employeeVMs.Add(employee);
                }


                if (employeeVMs.Count > 0)
                {

                var emp = employeeVMs[0];

                

                txtName.Text = emp.employee;
                txtAge.Text = emp.age.ToString();
                txtPhone.Text = emp.PhoneNumber.ToString();
                ddlPharmacyId.SelectedValue = emp.pharmacyId.ToString();
                ddlGender.SelectedValue = emp.gender;
                txtCountry.Text = emp.Country;
                txtCity.Text = emp.City;
                txtAddress.Text = emp.address;
                txtPosition.Text = emp.Position;
                txtSalary.Text = emp.Salary.ToString();
                txtNationality.Text = emp.nationality;
                ShowData();
                }
                else
                {
                    Response.Redirect("~/admin/AddNewEmployee");
                    ShowData();
                }
            }
           
        }





        // Show Data 




    }
}