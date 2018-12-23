<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="OrderResponse.aspx.cs" Inherits="HeshysSandwiches.OrderResponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <p>Thank you for your order!</p>
    <p>Your order number is
        <asp:SqlDataSource ID="OrderIDSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommandType="StoredProcedure" SelectCommand="SELECT TOP (1) OrderID FROM OrderInformation ORDER BY OrderID DESC"></asp:SqlDataSource>
    </p>
    <asp:BulletedList ID="OrderIDBulletedList" runat="server" DataSourceID="OrderIDSqlDataSource" DataTextField="OrderID" DataValueField="OrderID">
    </asp:BulletedList>
    <p>Your order total is&nbsp;
        <asp:SqlDataSource ID="OrderTotalSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP (1) OrderTotal FROM OrderInformation ORDER BY OrderID DESC"></asp:SqlDataSource>
    </p>
    <asp:BulletedList ID="OrderTotalBulletedList" runat="server" DataSourceID="OrderTotalSqlDataSource" DataTextField="OrderTotal" DataValueField="OrderTotal">
    </asp:BulletedList>
</asp:Content>
