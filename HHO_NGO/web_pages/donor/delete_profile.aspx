<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/donor.Master" AutoEventWireup="true" CodeBehind="delete_profile.aspx.cs" Inherits="HHO_NGO.web_pages.donor.delete_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/donor/delete_profile.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">
            <span>Delete Profile</span>
        </div>
        <div class="message">
            <p>Are you sure, You want to delete your account?</p>
        </div>
        <div class="option">
                <asp:Button ID="btnyes" CssClass="btnoption" runat="server" Text="Yes" OnClick="btnyes_Click" />
                <asp:Button ID="btnno" CssClass="btnoption" runat="server" Text="No" OnClick="btnno_Click"/>
        </div>
    </div>
</asp:Content>
