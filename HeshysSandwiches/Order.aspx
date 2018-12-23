<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="HeshysSandwiches.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    
    <asp:Label ID="SandwichLabel" runat="server" Text="Sandwich:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="HeshysSandwichesDB" DataTextField="Name" DataValueField="Name">
    </asp:DropDownList>


    <asp:SqlDataSource ID="HeshysSandwichesDB" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Sandwiches]"></asp:SqlDataSource>


</asp:Content>
