<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="Pharmacy.Home.Brand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p class="MsoNormal">
    <span style="mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri;mso-bidi-font-family:
Calibri"><strong><em style="color: #336699; background-color: #FFFFFF; font-family: 'Arabic Typesetting'; font-size: x-large;">We have the most important international brands, please <span style="mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri">Click to view <o:p></o:p></span></em></strong></span>
</p>
<p>
    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" Font-Bold="True" ForeColor="#336699" BackColor="#336699" style="color: #FFFFFF" />
</p>
<p>
    <asp:GridView ID="gvBrand" runat="server">
    </asp:GridView>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
</p>
<p>
</p>
</asp:Content>
