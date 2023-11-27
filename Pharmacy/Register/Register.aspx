<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Pharmacy.Register.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <strong><span style="color: #3366CC">First Name<br />
    </span>
    <asp:TextBox ID="txtfirstName" runat="server" style="color: #3366CC"></asp:TextBox>
    <span style="color: #3366CC">
    <br />
    <br />


    Midde Name
    <br />
    </span>
        <asp:TextBox ID="txtmiddleName" runat="server" OnTextChanged="TextBox2_TextChanged" Style="color: #3366CC"></asp:TextBox>
    <span style="color: #3366CC">
    <br />
    <br />





    Last Name</span></strong><span style="color: #3366CC"><br />
    </span>
    <asp:TextBox ID="txtlName" runat="server" OnTextChanged="TextBox3_TextChanged" style="color: #3366CC"></asp:TextBox>
    <br style="color: #3366CC" />
    <strong>
    <br style="color: #3366CC" />
    <span style="color: #3366CC">Email
    <br />
    </span>
    <asp:TextBox ID="txtEmail" runat="server" style="color: #3366CC"></asp:TextBox>
    <span style="color: #3366CC">
    <br />
    <br />
    Gender<br />
    </span>
    <asp:DropDownList ID="ddlgender" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="color: #3366CC">
    </asp:DropDownList>
    <span style="color: #3366CC">
    <br />
    <br />
    Age<br />
    </span>
    <asp:TextBox ID="txtage" runat="server" style="color: #3366CC"></asp:TextBox>
    <span style="color: #3366CC">
    <br />
    <br />
    Phone Number<br />
    </span></strong>
    <asp:TextBox ID="txtnumber" runat="server" style="color: #3366CC"></asp:TextBox>
    <br style="color: #3366CC" />
</asp:Content>
