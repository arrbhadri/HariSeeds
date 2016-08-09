<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AddProductDetils.aspx.cs" Inherits="HariSeedsWeb.AddProductDetils" %>

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
            <span>Invoice Details</span>
        </h2>
        <table style="width: 100%;">
            <tr>
                <th>
                    <asp:Label ID="lblCompanyName" runat="server" Text="Company Name"></asp:Label>
                </th>
                <td>
                    <asp:DropDownList ID="ddlCompanyname" runat="server" Height="26px" Width="153px">
                    </asp:DropDownList>
                </td>
                <th>
                    <asp:Label ID="lblInvoicedate" runat="server" Text="Date"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="dInvoicedate" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <h2>
            <span>Product Details</span>
        </h2>
        <table style="width: 100%;">
            <tr>
                <th class="style2">
                    <asp:Label ID="lblProductname" runat="server" Text="Product Name"></asp:Label>
                </th>
                <td class="style1">
                    <asp:TextBox ID="txtProductname" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblProductSize" runat="server" Text="Product Size"></asp:Label>
                </th>
                <td class="style3">
                    <asp:TextBox ID="txtProductsize" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblProductquantity" runat="server" Text="Product Quantity"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtProductquantity" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th class="style2">
                    <asp:Label ID="lblPriceperquantity" runat="server" Text="Price Per Quantity"></asp:Label>
                </th>
                <td class="style1">
                    <asp:TextBox ID="txtPriceperquantity" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
            </tr>
        </table>
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
                <asp:Button ID="btnAdd" runat="server" Text="Add" />&nbsp;&nbsp;
                <asp:Button ID="btnRemove" runat="server" Text="Remove" />
            </td>
        </table>
    </div>
    <div>
        <h2>
            <span>Product Details</span>
        </h2>
        <div>
            <asp:GridView ID="Griddetails" runat="server" AutoGenerateColumns="False" AllowPaging="true"
                AllowSorting="true" Width="921px" ShowFooter="True">
                <Columns>
                    <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
                    <asp:BoundField HeaderText="Product Size" DataField="ProductSize" />
                    <asp:BoundField HeaderText="Product Quantity" DataField="ProductQuantity" />
                    <asp:BoundField HeaderText="Price Per Quantity" DataField="PricePerQuantity" />
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
