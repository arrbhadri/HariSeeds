<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Addcompanydetails.aspx.cs" Inherits="HariSeedsWeb.Addcompanydetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 196px;
        }
        .style2
        {
            width: 127px;
        }
        .style3
        {
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>
            <span>Company Details</span>
        </h2>
        <table style="width: 100%">
            <tr>
                <th>
                    <asp:Label ID="lblCompanyName" runat="server" Text="Company Name"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtcompanyname" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblPhoneNO" runat="server" Text="Phone Number"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtPhoneno" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblCompanyAddress" runat="server" Text="Company Address"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtCompanyaddress" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtState" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblcountry" runat="server" Text="Country"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtCountry" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th class="style2">
                    <asp:Label ID="lblPinno" runat="server" Text="Pin No"></asp:Label>
                </th>
                <td class="style1">
                    <asp:TextBox ID="txtPinno" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <h2>
            <span>Grid Details</span>
        </h2>
        <div>
            <asp:GridView ID="Griddetails" runat="server" AutoGenerateColumns="False" AllowPaging="true"
                AllowSorting="true" Width="921px" ShowFooter="True">
                <Columns>
                    <asp:BoundField HeaderText="Company Name" DataField="Companyname" />
                    <asp:BoundField HeaderText="Coompany ID" DataField="compnyID" />
                    <asp:BoundField HeaderText="Pone Number" DataField="PhoneNumber" />
                    <asp:BoundField HeaderText="Comapany Address" DataField="Comapanyaddress" />
                    <asp:BoundField HeaderText="CIty" DataField="City" />
                    <asp:BoundField HeaderText="State" DataField="State" />
                    <asp:BoundField HeaderText="Country" DataField="Country" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <br />
    <div>
        <table>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" />
            </td>
        </table>
    </div>
</asp:Content>
