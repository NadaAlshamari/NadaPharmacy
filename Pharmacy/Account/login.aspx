<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Pharmacy.Account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <div>
    
        <table class="style1">
            <tr><td colspan="2" style="text-align: center"><strong><em style="color: #336699"><span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><strong style="font-family: 'Arabic Typesetting'; font-size: xx-large;"><span style="font-size: x-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: xx-large">Welcome </span><span style="font-size: x-large">&nbsp;</span><span style="font-size: large">(<span style="color: #336699">Login)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                </span></strong></em></td></tr>
            <tr>
                <td class="style2" style="height: 38px; width: 107px">
                    <span style="color: #336699"><strong>&nbsp;</strong></span></td>
                <td style="height: 38px; width: 694px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="font-family: 'Arabic Typesetting'; font-size: large; color: #336699;">
                    <strong>User <span style="color: #336699">Name</span></strong></td>
                <td style="font-family: 'Arabic Typesetting'; font-size: large;">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
  
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-family: 'Arabic Typesetting'; font-size: large; color: #336699;">
                    <strong>Password</strong></td>
                <td style="font-family: 'Arabic Typesetting'; font-size: large;">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-family: 'Arabic Typesetting'; font-size: large;">
                    <br />
                    <br />
&nbsp;&nbsp; </td>
                <td style="font-family: 'Arabic Typesetting'; font-size: large;">
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                        Text="Login" BackColor="#336699" Font-Bold="True" ForeColor="White" />
<%--                    <asp:Button ID="btnCreateAdmin" runat="server" OnClick="btnCreateAdmin_Click" Text="Admin" Visible="False" />--%>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 107px">
                    &nbsp;</td>
                <td style="width: 694px">
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>
