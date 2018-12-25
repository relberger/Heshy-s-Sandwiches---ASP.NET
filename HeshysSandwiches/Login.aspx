<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HeshysSandwiches.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
    </asp:Login>
</asp:Content>
