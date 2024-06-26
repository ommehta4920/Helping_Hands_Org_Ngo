<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="HHO_NGO.web_pages.admin.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/dashboard.css" />
    <link rel="stylesheet" href="../../css/admin/home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h2>Welcome Back <span>
            <asp:Label ID="ad_name" runat="server" Text=""></asp:Label>
        </span></h2>
    </div>
    <div class="cards">
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="t_donors" runat="server" Text="00"></asp:Label></h2>
                <h3>Donors</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="donors_logo" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="t_vol" runat="server" Text="00"></asp:Label></h2>
                <h3>Volunteers</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/icons/courier.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="t_donation" runat="server" Text="00"></asp:Label></h2>
                <h3>Donation</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/icons/donation.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label runat="server" ID="t_events" Text="00"></asp:Label></h2>
                <h3>Events</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/icons/event.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label runat="server" ID="tp_dtasks" Text="00"></asp:Label></h2>
                <h3>Pending</h3>
                <h3>Donation Task</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/icons/checklist.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label runat="server" ID="tc_dtasks" Text="00"></asp:Label></h2>
                <h3>Completed</h3>
                <h3>Donation Task</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/icons/checklist.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label runat="server" ID="t_contact" Text="00"></asp:Label></h2>
                <h3>Contacts</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/icons/contact-book.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label runat="server" ID="t_feedback" Text="00"></asp:Label></h2>
                <h3>Feedbacks</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/icons/feedback.png" width="60px" Height="60px" />
             </div>
        </div>
    </div>
        <div class="display-2"></div>
</asp:Content>
