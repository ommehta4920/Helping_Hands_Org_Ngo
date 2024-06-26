<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/volunteer.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="HHO_NGO.web_pages.volunteer.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/volunteer/profile.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Profile</div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">User Id</span>
                    <asp:TextBox ID="txtuser_id" CssClass="txtuser_id" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">User Name</span>
                    <asp:TextBox ID="txtuser_name" CssClass="txtuser_name" placeholder="Enter your name" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="input-box1">
                    <span class="details">Address</span>
                    <asp:TextBox ID="txtaddress" placeholder="Type your address here..." runat="server" Rows="5" Columns="63" CssClass="txtaddress" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Email</span>
                    <asp:TextBox ID="txtemail" CssClass="txtemail" placeholder="Enter your email" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number</span>
                    <asp:TextBox ID="txtph_no" CssClass="txtph_no" placeholder="Enter your phone number" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <div class="button">
                <asp:Button ID="btnedit" CssClass="btnedit" runat="server" Text="Click Here To Edit Your Profile" OnClick="btnedit_Click" />
            </div>
    </div>
</asp:Content>
