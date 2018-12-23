<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HeshysSandwiches.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:Label ID="NameLabel" runat="server" Text="Name: " ForeColor="Black"></asp:Label>
    <asp:TextBox ID="NameField" runat="server" OnTextChanged="NameField_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NameField" Display="Dynamic" ErrorMessage="Please enter your name">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="EmailLabel" runat="server" Text="Email: " ForeColor="Black"></asp:Label>
    <asp:TextBox ID="EmailField" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailField" Display="Dynamic" ErrorMessage="Please enter a valid email address">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailField" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="CommentsLabel" runat="server" Text="Comments/Questions/Concerns?" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="CommentsField" name="Comments" rows="5" runat="server" TextMode="MultiLine" Width="65%"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CommentsField" Display="Dynamic" ErrorMessage="Please enter your comments">*</asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
</asp:Content>
