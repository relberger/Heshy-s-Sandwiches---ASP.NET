<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HeshysSandwiches.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            You are already logged in.
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
