<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Pharmacy.demo1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p style="color: #336699">
        <em><strong style="font-family: 'Arabic Typesetting'; font-size: xx-large">LIFE PHARMACEY ONLINE STORE</strong></em></p>
    <p>
        <br />
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    </p>
    <table style="width: 100%">
        <tr>
            <td style="height: 23px">
                <table style="width: 100%; background-color: #FFFFFF">
                    <tr>
                        <td style="background-color: #FFFFFF; display: inline; font-family: 'Arabic Typesetting'; color: #336699; font-size: x-large; width: 490px;">
                            <div style="direction: ltr">
                                <strong><em style="background-color: #C0C0C0"><span style="font-size: xx-large">medication</span></em><em style="color: #C0C0C0"><br />
                                </em></strong></div>
                            <asp:CheckBoxList ID="cblMedicationId" runat="server" style="font-weight: 700; font-style: italic">
                            </asp:CheckBoxList>
                        </td>
                        <td style="background-color: #FFFFFF; display: inline;"><strong><span style="font-size: xx-large"><em style="font-family: 'Arabic Typesetting'; color: #336699; background-color: #C0C0C0;">payment</em></span><em style="font-family: 'Arabic Typesetting'; font-size: x-large; color: #336699; background-color: #C0C0C0;"><br />
                            <br />
                            <asp:RadioButtonList ID="cblPaymentMethodId" runat="server">
                            </asp:RadioButtonList>
                            </em></strong>
                        </td>
                    </tr>
                    <a href="medicationCRUD.aspx"></a>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvPayment" runat="server" AutoGenerateColumns="false" DataKeyNames="Payment" >

                </asp:GridView>
                <br />
                <br />
                <asp:Button ID="btnPay" runat="server" OnClick="btnPay_Click" Text="Pay" Font-Bold="True" ForeColor="#336699" BackColor="#336699" style="color: #FFFFFF"/>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
