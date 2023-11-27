<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Pharmacy.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: center"><%: Title %> contact us</h2>
    <h3>If there are ways that we can better delight you, please contact us</h3>
    <address>
        <br />
        C<abbr title="Phone">ell us:</abbr>
        920033385</address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">NadaNezal.alshammari@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">lmattrctive24@gmail.com</a></address>
    <address>
        &nbsp;</address>
    <address>
        &nbsp;</address>
    

        <table border="0">
            <tr>
                <td style="color: #800000; background-color: #CCCCCC;"></td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="color: #800000; background-color: #CCCCCC;"><strong>From -Email</strong></td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:TextBox ID="txtSenderEmail" runat="server" Height="16px" Width="450px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="color: #800000; background-color: #CCCCCC;"><strong>Subject </strong> </td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:TextBox ID="txtSubject" runat="server" OnLoad="lblOutputClear_txtSubject" Width="450px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="color: #800000; background-color: #CCCCCC;"><strong>File Attachments:</strong></td>
                <td style="color: #800000; background-color: #CCCCCC;">
                    <strong>
                    <asp:FileUpload ID="fuAttachment" runat="server" AllowMultiple="true" Enabled="true" Width="449px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td valign="top" style="color: #800000; background-color: #CCCCCC;"><strong>Message </strong> </td>
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
                    <asp:Button ID="btnSendMailViaMailMgr" runat="server" OnClick="btnSendMailViaMailMgr_Click" Text="Send " />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </strong>
                </td>
            </tr>
        </table>
    <address>
        &nbsp;</address>
    <address>
        &nbsp;</address>
    
</asp:Content>
