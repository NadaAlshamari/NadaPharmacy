<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="Pharmacy.demo1.Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
     <table style="width: 81%; height: 445px;">
         <tr>
             <td style="width: 436px; height: 30px;">
                 <asp:Label ID="lblOutput" runat="server" style="background-color: #FFFFFF"></asp:Label>
             </td>
             <td style="width: 300px; height: 30px"></td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><em>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>&nbsp;Client ID</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em> </span>
             </td>
             <td style="height: 29px; width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtClientId" runat="server" style="margin-left: 14px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><em>&nbsp;</em><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;&nbsp;</em></strong></span></td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtfName" runat="server" style="margin-left: 13px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <strong><em>&nbsp;Last Name</em></strong><span style="background-color: #FFFFFF"><em>&nbsp;&nbsp;&nbsp;&nbsp; </em> </span>
             </td>
             <td style="height: 29px; width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtlName" runat="server" style="margin-left: 13px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><strong><em>Gender &nbsp;</em></strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em> </span>
             </td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtGender" runat="server" style="margin-left: 14px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><em>&nbsp;<strong> </strong>
                 </em>
                 </span>
                 <em>
                 <strong>Age</strong></em><span style="background-color: #FFFFFF"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </em> </span>
             </td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtage" runat="server" style="margin-left: 15px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><strong><em>Phone </em> </strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</em></span></td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtphone" runat="server" style="margin-left: 15px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <strong><em>&nbsp;Email</em></strong><span style="background-color: #FFFFFF"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </em> </span>
             </td>
             <td style="height: 33px; width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtemail" runat="server" style="margin-left: 13px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><em>&nbsp;<strong>Country</strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                 </em>
                 </span>
             </td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtCountry" runat="server" OnTextChanged="txtCountry_TextChanged" style="margin-left: 12px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>City&nbsp;</strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </em> </span>
             </td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtCity" runat="server" style="margin-left: 13px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="text-align: right; color: #336699; font-family: 'Arabic Typesetting'; font-size: x-large;">
                 <span style="background-color: #FFFFFF"><em>&nbsp;<strong> </strong>
                 </em>
                 </span>
                 <em>
                 <strong>Address</strong></em><span style="background-color: #FFFFFF"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em> </span>
             </td>
             <td style="width: 300px; background-color: #FFFFFF;">
                 <asp:TextBox ID="txtaddress" runat="server" OnTextChanged="txtaddress_TextChanged" style="margin-left: 13px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 436px">
                 <asp:Button ID="btninsert" runat="server" Text="insert" OnClick="btninsert_Click" style="background-color: #FFFFFF" Font-Bold="True" ForeColor="#336699" BackColor="#336699" />
                 <%--<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" style="background-color: #FFFFFF; color: #336699;" Font-Bold="True" ForeColor="#336699" BackColor="#336699" />--%>
                <%-- <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" style="background-color: #FFFFFF" Font-Bold="True" ForeColor="#336699" />--%>
              <%--   <asp:Button ID="btnselect" runat="server" Text="select" style="background-color: #FFFFFF" Font-Bold="True" ForeColor="#336699" />--%>
             </td>
             <td style="width: 300px; background-color: #FFFFFF;">&nbsp;</td>
         </tr>
     </table>
     <asp:GridView ID="gvClient" runat="server">
     </asp:GridView>
     <br style="background-color: #FFFFFF" />
     


        

    </asp:Content>