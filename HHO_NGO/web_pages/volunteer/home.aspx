<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/volunteer.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="HHO_NGO.web_pages.volunteer.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/dashboard.css" />
    <link rel="stylesheet" href="../../css/volunteer/home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h2>Welcome Back <span>
            <asp:Label ID="v_name" runat="server" Text=""></asp:Label>
        </span></h2>
    </div>
    <div class="cards">
            <div class="card">
            <div class="box">
                <h2><asp:Label ID="t_collection" runat="server" Text="00"></asp:Label></h2>
                <h3>Total</h3>
                <h3>Collection</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="p_collection" runat="server" Text="00"></asp:Label></h2>
                <h3>Pending</h3>
                <h3>Collection</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="c_collection" runat="server" Text="00"></asp:Label></h2>
                <h3>Completed</h3>
                <h3>Collection</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
        <div class="card">
            <div class="box">
                <h2><asp:Label ID="te_task" runat="server" Text="00"></asp:Label></h2>
                <h3>Total</h3>
                <h3>Event Task</h3>
            </div>
            <div class="icon-design">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/icons/customer.png" width="60px" Height="60px" />
             </div>
        </div>
    </div>
        <div class="display-2"></div>
</asp:Content>
