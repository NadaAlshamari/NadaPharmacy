<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Pharmacy.Home.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p style="background-color: #FFFFFF; font-family: 'Arabic Typesetting'; font-size: x-large">
        <strong><em style="color: #336699; background-color: #FFFFFF"> if you wante to consult a doctor, please choose your Pharmacy to view the doctor's information </em></strong><br />
    </p>
<p>
        <asp:DropDownList ID="ddlpharmacy" runat="server" BackColor="#336699" style="color: #FFFFFF">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnChoose" runat="server" Text="Choose & Get data"  OnClick="btnChoose_Click" Font-Bold="True" ForeColor="#336699" style="text-decoration: underline; color: #FFFFFF;" BackColor="#336699"/>
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
