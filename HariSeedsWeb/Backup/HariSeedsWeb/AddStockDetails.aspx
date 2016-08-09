<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AddStockDetails.aspx.cs" Inherits="HariSeedsWeb.AddStockDetails" %>

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
                    <asp:Label ID="lblInvoicedate" runat="server" Text="Invoice Date"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="dInvoicedate" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <th>
                    <asp:Label ID="lblInvoiceno" runat="server" Text="Invoice No"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtnvoiceno" runat="server" Height="22px" Width="147px"></asp:TextBox>
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
                    <asp:DropDownList ID="ddlProductname" runat="server" Height="26px" Width="153px">
                    </asp:DropDownList>
                </td>
                <th>
                    <asp:Label ID="lblProductSize" runat="server" Text="Product Size"></asp:Label>
                </th>
                <td class="style3">
                    <asp:DropDownList ID="ddlProductsize" runat="server" Height="26px" Width="153px">
                    </asp:DropDownList>
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
                    <asp:Label ID="lblTotalAmount" runat="server" Text="Total Amount"></asp:Label>
                </th>
                <td class="style1">
                    <asp:TextBox ID="txtTotalamount" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>
                <%--   <th>
                    <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="ddate" runat="server" Height="22px" Width="147px"></asp:TextBox>
                </td>--%>
                <%--<th>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>--%>
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
            <span>Grid Details</span>
        </h2>
        <div>
            <asp:GridView ID="Griddetails" runat="server" AutoGenerateColumns="False" AllowPaging="true"
                AllowSorting="true" Width="921px" ShowFooter="True" 
                onselectedindexchanged="Griddetails_SelectedIndexChanged">
                <Columns>
                    <%--    <asp:BoundField HeaderText="Company Name" DataField="Companyname" />
                    <asp:BoundField HeaderText="Invoice Date" DataField="Invoicedate" />
                    <asp:BoundField HeaderText="Invoice No" DataField="Invoiceno" />--%>
                    <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
                    <asp:BoundField HeaderText="Product Size" DataField="ProductSize" />
                    <asp:BoundField HeaderText="Product Quantity" DataField="ProductQuantity" />
                    <%--<asp:BoundField HeaderText="Date" DataField="Date" />--%>
                    <asp:BoundField HeaderText="Total Amount" DataField="TotalAmount" />
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
