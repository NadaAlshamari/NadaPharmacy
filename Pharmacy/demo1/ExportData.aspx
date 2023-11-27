<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExportData.aspx.cs" Inherits="Pharmacy.demo1.ExportData" 
    
 EnableEventValidation="false"

    %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p style="color: #336699; background-color: #FFFFFF">


        <strong><em style="background-color: #FFFFFF">Export Data To Excel
</em></strong>


    <br />
</p>
<p>
    <asp:GridView ID="gvexport" runat="server" AutoGenerateColumns="False" style="color: #336699" >
        <Columns>
            <asp:BoundField DataField="ClientId" HeaderText="ClientId" InsertVisible="False" ReadOnly="True" SortExpression="ClientId" />
            <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
            <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <strong>
    <asp:Button ID="btnexport" runat="server" Text="Export" OnClick="btnexport_Click" BackColor="#336699" style="color: #FFFFFF; font-weight: bold" />
    </strong>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
