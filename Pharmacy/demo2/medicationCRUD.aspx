<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="medicationCRUD.aspx.cs" Inherits="Pharmacy.demo1.medicationCRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Arabic Typesetting'; font-size: x-large;"><span style="color: #336699"><strong><em>Medication ID</em></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="txtmedicationId" runat="server" style="color: #336699"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Arabic Typesetting'; font-size: x-large;"><span style="color: #336699"><strong><em>Medication&nbsp;&nbsp;&nbsp;</em></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txtmedication" runat="server" style="color: #336699" Width="158px" ></asp:TextBox>
                </span>
                <br style="color: #336699" />
                <span style="color: #336699">
                <strong><em>Medication Number</em></strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="txtmedicationNumber" runat="server" style="color: #336699"></asp:TextBox>
            </td>
            <td style="height: 7px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Arabic Typesetting'; font-size: x-large;"><span style="color: #336699">
                <strong><em>sell Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtsellPrice" runat="server"></asp:TextBox>
                </em></strong></span>
            </td>
            <td style="height: 7px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 515px">
                <br />
                <br />
                <strong>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" BackColor="#336699" style="color: #FFFFFF; font-weight: bold" />
                <asp:Button ID="btnUpdate" runat="server"  Text="Update" OnClick="btnUpdate_Click" BackColor="#336699" style="color: #FFFFFF; font-weight: bold" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" BackColor="#336699" style="color: #FFFFFF; font-weight: bold" />
                <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" BackColor="#336699" style="color: #FFFFFF; font-weight: bold" />
                </strong>
                <br />
                <br />
                <br />
                <asp:GridView ID="gvmedication" runat="server" AutoGenerateColumns="False" DataKeyNames="medicationId">
                    <Columns>
                        <asp:BoundField DataField="medicationId" HeaderText="medicationId" InsertVisible="False" ReadOnly="True" SortExpression="medicationId" />
                        <asp:BoundField DataField="medicationNumber" HeaderText="medicationNumber" SortExpression="medicationNumber" />
                        <asp:BoundField DataField="medication" HeaderText="medication" SortExpression="medication" />
                        <asp:BoundField DataField="sellPrice" HeaderText="sellPrice" SortExpression="sellPrice" />
                        
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyConnectionString %>" SelectCommand="SELECT * FROM [medication]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </asp:Content>
