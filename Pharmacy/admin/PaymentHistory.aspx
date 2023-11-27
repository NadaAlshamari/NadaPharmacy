<%@ Page Title="Employees" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true" 
    CodeBehind="PaymentHistory.aspx.cs"
    Inherits="Pharmacy.admin.PaymentHistory" %>

 
 
<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent" 
    runat="server">

 
    <h2 style="font-family: 'Arabic Typesetting'; font-size: x-large;"> <span style="color: #336699"><strong><em>Payments History</em></strong></span>  </h2>
    
      <asp:GridView ID="gvGetPayments" runat="server" AutoGenerateColumns="False" DataKeyNames="PaymentId">
                    <Columns>
   <asp:BoundField DataField="PaymentId" HeaderText="PaymentId" SortExpression="PaymentId" />
   <asp:BoundField DataField="medication" HeaderText="Medication" SortExpression="medication" />
   <asp:BoundField DataField="sellPrice" HeaderText="Price" SortExpression="sellPrice" />
   <asp:BoundField DataField="paymentMethod" HeaderText="PaymentMethod" SortExpression="paymentMethod" />
  
                         
                    </Columns>
      </asp:GridView>

 
</asp:Content>

 
