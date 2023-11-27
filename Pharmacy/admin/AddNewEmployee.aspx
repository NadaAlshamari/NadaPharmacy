<%@ Page Title="Employees" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true" 
    CodeBehind="AddNewEmployee.aspx.cs"
    Inherits="Pharmacy.admin.AddNewEmployee" %>

 
 
<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent" 
    runat="server">

 
    <h2 style="font-family: 'Arabic Typesetting'"> <strong><em>Employees Management  </em>  </strong>  </h2>
    <div style="text-align: left"   >
        <label>&nbsp;&nbsp; Employee Id&nbsp;&nbsp;&nbsp; </label>
        &nbsp;<asp:TextBox ID="txtEmpId" runat="server"
            AutoPostBack="true" OnTextChanged="txtUpdateEmpId_TextChanged" 
            />
       
    </div> 
    
  

    <div style="text-align: left">
        <label>&nbsp;Name</label>
        <asp:TextBox ID="txtName" runat="server"   />
    <asp:RequiredFieldValidator runat="server" 
        ID="rfvName"  ControlToValidate="txtName"
         ErrorMessage="Required!"  Display="Dynamic"
         ForeColor="Red" ValidationGroup='valGroup1'
        />
    </div> 

      <div>
        <label>Age</label>
        <asp:TextBox ID="txtAge"  runat="server" />
    </div> 
     
    <div>
        <label>Phone Number&nbsp; </label>
        &nbsp;<asp:TextBox ID="txtPhone"  runat="server" />
        <asp:RequiredFieldValidator runat="server" 
        ID="rfvPhone"  ControlToValidate="txtPhone"
         ErrorMessage="Required!"  Display="Dynamic"
         ForeColor="Red" ValidationGroup='valGroup1'
        />
    </div> 

   <div>
        <label>Pharmacy</label>
            <asp:DropDownList ID="ddlPharmacyId" runat="server">

            </asp:DropDownList>
     </div>    
    
    <div>
        <label>Gender</label>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text="Male" Value="male" />
                <asp:ListItem Text="Female" Value="female" />
            </asp:DropDownList>
     </div> 
     
   <div>
        <label>Position</label>
        <asp:TextBox ID="txtPosition"  runat="server" />
          <asp:RequiredFieldValidator runat="server" 
        ID="rfvPosition"  ControlToValidate="txtPosition"
         ErrorMessage="Required!"  Display="Dynamic"
         ForeColor="Red" ValidationGroup='valGroup1'
        />
    </div> 
    
    
    <div>
        <label>Salary</label>
        <asp:TextBox ID="txtSalary"  runat="server" />
        <asp:RequiredFieldValidator runat="server" 
        ID="rfvSalary"  ControlToValidate="txtSalary"
         ErrorMessage="Required!"  Display="Dynamic"
         ForeColor="Red" ValidationGroup='valGroup1'
        />
    </div> 
     <div>
        <label>Nationality</label>
        <asp:TextBox ID="txtNationality"  runat="server" />
          <asp:RequiredFieldValidator runat="server" 
        ID="rfvNationality"  ControlToValidate="txtNationality"
         ErrorMessage="Required!"  Display="Dynamic"
         ForeColor="Red" ValidationGroup='valGroup1'
        />
    </div> 

   <div>
        <label>Country</label>
        <asp:TextBox ID="txtCountry"  runat="server" />
    </div> 
       <div>
        <label>City</label>
        <asp:TextBox ID="txtCity"  runat="server" />
    </div> 
    
    <div>
        <label>Address</label>
        <asp:TextBox ID="txtAddress"  runat="server"  />
    </div> 
    
    
    <div>
        <asp:Button ID="btnSubmit"  runat="server" Text="Create"
            BackColor="#336699" style="color: #FFFFFF; font-weight: bold"
            OnClick="btnSubmit_Click"
         ValidationGroup='valGroup1'
            />


         <asp:Button 
            ID="btnSelect"  
         runat="server"
            Text="Select" 
            UseSubmitBehavior="false" 
               
            BackColor="#336699" 
            style="color: #FFFFFF; 
            font-weight: bold"
           OnClick="btnSelect_Click"
            />
         <asp:Button 
            ID="btnDelete"  
         runat="server"
            Text="Delete" 
            UseSubmitBehavior="false" 
               
            BackColor="#336699" 
            style="color: #FFFFFF; 
            font-weight: bold"
           OnClick="btnDelete_Click"
            />
        
        
        
              <asp:Button 
            ID="btnUpdate"  
         runat="server"
            Text="Update" 
            UseSubmitBehavior="false" 
               
            BackColor="#336699" 
            style="color: #FFFFFF; 
            font-weight: bold"
           OnClick="btnUpdate_Click"
            />

         

  
    </div> 

    <br />
 


      <asp:GridView ID="gvGetEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeId">
                    <Columns>
   <asp:BoundField DataField="employeeId" HeaderText="employeeId" SortExpression="employeeId" />
   <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
   <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
   <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
   <asp:BoundField DataField="Gender" HeaderText="Age" SortExpression="Gender" />
   <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
   <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
   <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
   <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
   <asp:BoundField DataField="EmployeeCity" HeaderText="EmployeeCity" SortExpression="EmployeeCity" />
   <asp:BoundField DataField="EmployeeAddress" HeaderText="EmployeeAddress" SortExpression="EmployeeAddress" />
   <asp:BoundField DataField="PhacmacyAddress" HeaderText="PhacmacyAddress" SortExpression="PhacmacyAddress" />
   <asp:BoundField DataField="PharmacyName" HeaderText="PharmacyName" SortExpression="PharmacyName" />
                         
                    </Columns>
      </asp:GridView>

 
</asp:Content>

 
