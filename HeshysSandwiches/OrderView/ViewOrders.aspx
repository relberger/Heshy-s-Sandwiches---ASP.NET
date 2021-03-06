﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="HeshysSandwiches.ViewOrders" Theme="GridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            You are not authorized to view this page.
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:GridView ID="AllOrderGridView" runat="server" AutoGenerateColumns="False" AllowSorting="True" DataSourceID="AllOrders" SkinID="gridviewSkin" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="OrderID">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="PaymentProcessed" HeaderText="PaymentProcessed" SortExpression="PaymentProcessed" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="AllOrders" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [OrderID], [PaymentProcessed], [UserID], [OrderTotal] FROM [OrderInformation]"
                UpdateCommand="UPDATE OrderInformation SET UserID=@UserID, PaymentProcessed=@PaymentProcessed, OrderTotal=@OrderTotal WHERE OrderID=@OrderID"
                DeleteCommand="DELETE FROM OrderInformation WHERE OrderID=@OrderID"
                InsertCommand="INSERT INTO OrderInformation (UserID, PaymentProcessed, OrderTotal) VALUES (@UserID, @PaymentProcessed, @OrderTotal)">
                <UpdateParameters>
                    <asp:Parameter Name="UserID" />
                    <asp:Parameter Name="PaymentProcessed" />
                    <asp:Parameter Name="OrderTotal" />
                </UpdateParameters>
                <DeleteParameters>
                    <asp:Parameter Name="OrderID" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </LoggedInTemplate>
    </asp:LoginView>

</asp:Content>
