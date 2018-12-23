<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="HeshysSandwiches.ViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <asp:GridView ID="AllOrderGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="AllOrders">
    <AlternatingRowStyle BackColor="#A9D3D8" />
    <Columns>
        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
        <asp:BoundField DataField="PaymentProcessed" HeaderText="PaymentProcessed" SortExpression="PaymentProcessed" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />
    </Columns>
    <HeaderStyle ForeColor="#5FADB6" />
</asp:GridView>
<asp:SqlDataSource ID="AllOrders" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [PaymentProcessed], [UserID], [OrderTotal] FROM [OrderInformation]"></asp:SqlDataSource>

</asp:Content>
