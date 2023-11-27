<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Pharmacy.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: center; color: #000000; font-family: 'Arabic Typesetting'; font-size: xx-large;"><span style="font-weight: normal"><strong style="font-family: 'Arabic Typesetting'"><em>CONTECT US</em></strong></span></h2>
    <h3 style="font-family: 'Arabic Typesetting'; font-size: x-large;"><em>&nbsp;</em><span style="font-weight: normal"><em>If there are ways that we can better delight you, please contact us</em></span><br />
        <span style="font-weight: normal"><em>C</em><abbr title="Phone"><em>ell us:</em></abbr><em>
        920033385</em></span></h3>

    <address style="font-family: 'Arabic Typesetting'; font-size: x-large; color: #000000;">
        <strong style="color: #336699">Support:</strong>   <a href="mailto:Support@example.com"><span style="color: #336699">NadaNezal.alshammari@gmail.com</span></a><br style="color: #336699" />
        <strong style="color: #336699">Marketing:</strong> <a href="mailto:Marketing@example.com"><span style="color: #336699">lmattrctive24@gmail.com</span></a></address>
    <address>
        &nbsp;</address>
    <address>
        &nbsp;</address>
    

        <table border="0" style="font-family: 'Arabic Typesetting'; font-size: x-large;">
            <tr>
                <td style="color: #800000; background-color: #CCCCCC; height: 39px;"></td>
                <td style="color: #800000; background-color: #CCCCCC; height: 39px;">
                    <strong><em>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="#336699"></asp:Label>
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td style="color: #336699; background-color: #CCCCCC;"><strong><em>From -Email</em></strong></td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:TextBox ID="txtSenderEmail" runat="server" Height="16px" Width="450px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="color: #336699; background-color: #CCCCCC;"><strong><em>Subject </em></strong> </td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:TextBox ID="txtSubject" runat="server" OnLoad="lblOutputClear_txtSubject" Width="450px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="color: #336699; background-color: #CCCCCC;"><strong><em>File Attachments:</em></strong></td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:FileUpload ID="fuAttachment" runat="server" AllowMultiple="true" Enabled="true" Width="449px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td valign="top" style="color: #336699; background-color: #CCCCCC;"><strong><em>Message </em></strong> </td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:TextBox ID="txtBody" runat="server" Height="103px" TextMode="MultiLine" Width="455px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td valign="top" style="color: #800000; background-color: #CCCCCC;">&nbsp;</td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:Button ID="btnSendMailViaMailMgr" runat="server" OnClick="btnSendMailViaMailMgr_Click" Text="Send " BorderColor="#336699" BackColor="#336699" style="color: #FFFFFF; font-weight: bold" />
<%--                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" BorderColor="Black" BackColor="#336699" style="font-weight: bold; color: #FFFFFF" />--%>
                    </strong>
                </td>
            </tr>
        </table>
    <address>
        &nbsp;</address>
    <address>
        &nbsp;</address>
    
</asp:Content>
