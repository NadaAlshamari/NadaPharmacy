<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Pharmacy.Home.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <p>
        &nbsp;</p>
    <p style="text-decoration: underline">
        <strong><em> if you wante to consult a doctor, please choose your Pharmacy to view the doctor's information </em></strong><br />
    </p>
<p>
        <asp:DropDownList ID="ddlpharmacy" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnChoose" runat="server" Text="Choose & Get data"  OnClick="btnChoose_Click"/>
    </p>
    <p>
        <asp:GridView ID="gvEmployee" runat="server" OnSelectedIndexChanged="gvEmployee_SelectedIndexChanged">
        </asp:GridView>
    </p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
