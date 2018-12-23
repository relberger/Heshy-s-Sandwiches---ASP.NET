<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="HeshysSandwiches.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">


    <asp:Label ID="SandwichLabel" runat="server" Text="Sandwich:" ForeColor="Black"></asp:Label>
    <asp:SqlDataSource ID="HeshysSandwichesDBSandwich" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SandwichName] FROM [Sandwiches]"></asp:SqlDataSource>
    <asp:DropDownList ID="SandwichDropdown" runat="server" DataSourceID="HeshysSandwichesDBSandwich" DataTextField="SandwichName" DataValueField="SandwichName">
    </asp:DropDownList>
    <br />
    <asp:Label ID="SandwichSizeLabel" runat="server" Text="Sandwich Size:" ForeColor="Black"></asp:Label>
    <asp:DropDownList ID="SandwichSizeDropdown" runat="server">
        <asp:ListItem Value="6.99">6 inches - $6.99</asp:ListItem>
        <asp:ListItem Value="13.99">12 inches - $13.99</asp:ListItem>
        <asp:ListItem Value="35">3 feet - $35</asp:ListItem>
        <asp:ListItem Value="65">6 feet - $65</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="BreadLabel" runat="server" Text="Bread:" ForeColor="Black"></asp:Label>
    <asp:DropDownList ID="BreadDropdown" runat="server">
        <asp:ListItem>Whole Wheat</asp:ListItem>
        <asp:ListItem>Italian Herb and Cheese</asp:ListItem>
        <asp:ListItem>Rye</asp:ListItem>
        <asp:ListItem>Pumpernickel</asp:ListItem>
        <asp:ListItem>Cinnamon Raisin</asp:ListItem>
        <asp:ListItem>Onion and Garlic</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:RadioButtonList ID="SidesDropdown" runat="server" Height="43px" RepeatDirection="Horizontal" Width="403px">
        <asp:ListItem>Onion Rings</asp:ListItem>
        <asp:ListItem>French Fries</asp:ListItem>
        <asp:ListItem>Cajun Fries </asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="SaladLabel" runat="server" Text="Salad:" ForeColor="Black"></asp:Label>
    <asp:SqlDataSource ID="HeshysSandwichesDBSalad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT { fn CONCAT(SaladName + ' - $', CAST(Price AS nvarchar)) } AS SaladName FROM Salads"></asp:SqlDataSource>
    <asp:DropDownList ID="SaladDropdown" runat="server" DataSourceID="HeshysSandwichesDBSalad" DataTextField="SaladName" DataValueField="SaladName">
    </asp:DropDownList>
    <br />
    <asp:Label ID="SaucesLabel" runat="server" Text="Sauces to include:" ForeColor="Black"></asp:Label>
    <asp:CheckBoxList ID="SaucesCheckboxList" runat="server" RepeatDirection="Horizontal" Width="834px">
        <asp:ListItem>Ketchup </asp:ListItem>
        <asp:ListItem>Mustard </asp:ListItem>
        <asp:ListItem>Mayo </asp:ListItem>
        <asp:ListItem Value="Barbecue Sauce"></asp:ListItem>
        <asp:ListItem>Garlic Mayo</asp:ListItem>
        <asp:ListItem>Honey Mustard</asp:ListItem>
        <asp:ListItem>Sweet Chili</asp:ListItem>
    </asp:CheckBoxList>
    <asp:Label ID="CommentsLabel" runat="server" Text="Order comments:" ForeColor="Black"></asp:Label>
    <br />
    <asp:TextBox ID="CommentsTextBox" runat="server" Height="79px" TextMode="MultiLine" Width="470px"></asp:TextBox>
    <br />
    <asp:Label ID="PersonNameLabel" runat="server" Text="Name of person available for delivery:" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="PersonNameTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="PersonNameRequiredFieldValidator" runat="server" ControlToValidate="PersonNameTextBox" ErrorMessage="Please complete this field."></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="PersonPhoneLabel" runat="server" Text="Phone number:" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="PersonPhoneTextBox" runat="server" TextMode="Phone"></asp:TextBox>
    <asp:RegularExpressionValidator ID="PersonPhoneCheckingRegularExpressionValidator" runat="server" ControlToValidate="PersonPhoneTextBox" ErrorMessage="Please enter a valid phone number." ValidationExpression="^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="PersonPhoneRequiredFieldValidator" runat="server" ControlToValidate="PersonPhoneTextBox" ErrorMessage="Please complete this field."></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="PlaceOrderSubmit" runat="server" OnClick="PlaceOrderSubmit_Click" Text="Place Order" />
    </asp:Content>
