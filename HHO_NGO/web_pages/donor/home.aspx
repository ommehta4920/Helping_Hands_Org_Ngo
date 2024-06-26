<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/donor.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="HHO_NGO.web_pages.donor.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/dashboard.css" />
    <link rel="stylesheet" href="../../css/donor/home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h2>Welcome Back <span>
            <asp:Label ID="d_name" runat="server" Text=""></asp:Label>
        </span></h2>
    </div>
    <div class="cards">
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="t_donation" runat="server" Text="00"></asp:Label></h2>
                <h3>Total Donation</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="accept_donation" runat="server" Text="00"></asp:Label></h2>
                <h3>Accepted Donation</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="pending_donation" runat="server" Text="00"></asp:Label></h2>
                <h3>Pending Donation</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="c_donation" runat="server" Text="00"></asp:Label></h2>
                <h3>Collected</h3>
                <h3>Donation</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="nc_donation" runat="server" Text="00"></asp:Label></h2>
                <h3>Not Collected</h3>
                <h3>Donation</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
    </div>
        <div class="display-2"></div>
</asp:Content>
