
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="exportData.aspx.cs" 
    Inherits="party.demo.exportData" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="lblOutput" runat="server" Text="lblOutput"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        <asp:GridView ID="Gvclient" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ClientId" HeaderText="ClientId" InsertVisible="False" ReadOnly="True" SortExpression="ClientId" />
                <asp:BoundField DataField="cFirstName" HeaderText="cFirstName" SortExpression="cFirstName" />
                <asp:BoundField DataField="cLastName" HeaderText="cLastName" SortExpression="cLastName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            </Columns>
        </asp:GridView>
    <p>
        <br />
    </p>
    <p>
        <asp:Button ID="btnExportToExcel" runat="server" Text="Export To Excel" />
    </p>
    <p>
        &nbsp;</p>
    <%--<asp:ImageButton  AlternateText="Export" runat="server" OnClick="imgBtnPDF_Click" />--%>
    </asp:Content>
