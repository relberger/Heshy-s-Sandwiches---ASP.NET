<%@ Page Title="Default" Language="C#" MasterPageFile="MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HeshysSandwiches._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <p>
        Order your fresh 6-inch, 12-inch, 3-foot, or 6-foot sandwiches. Each portion is 6 ounces. 
        <br />
        We take care of all your catering needs or make smaller orders for your dinner tonight.
        <br />
        Call us for your next business meeting, lunch, or catering event!
        <br />
        Each order comes with onion rings, fries, and salad. 
    </p>

    <div class="jcarousel-wrapper">
        <div class="jcarousel">
            <ul>
                <li>
                    <img src="img1.jpg" width="600" height="400" alt=""></li>
                <li>
                    <img src="img2.jpg" width="600" height="400" alt=""></li>
                <li>
                    <img src="img3.jpg" width="600" height="400" alt=""></li>
                <li>
                    <img src="img4.jpg" width="600" height="400" alt=""></li>
                <li>
                    <img src="img5.jpg" width="600" height="400" alt=""></li>
            </ul>
        </div>
        <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
        <a href="#" class="jcarousel-control-next">&rsaquo;</a>
    </div>

</asp:Content>
