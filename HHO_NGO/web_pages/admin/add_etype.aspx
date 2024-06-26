<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="add_etype.aspx.cs" Inherits="HHO_NGO.web_pages.admin.add_etype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/add_types.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Add Event Type</div>
        <div class="user-details">
            <div class="input-box">
                <span class="details">Event Type Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttype_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:TextBox ID="txttype_name" CssClass="txttype_name" placeholder="Enter name of event type" runat="server"></asp:TextBox>
            </div>
            <div class="input-box1">
                <span class="details">Event Type Description<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtdesc" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:TextBox ID="txtdesc" placeholder="Write description about Event type..." runat="server" Rows="5" Columns="63" CssClass="txtdesc" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
        <div class="button">
            <asp:Button ID="btnadd" CssClass="btns" runat="server" Text="Add" OnClick="btnadd_Click" />
        </div>
        <div class="login-link">
            <span>Click here to
                <asp:HyperLink ID="registration_link" CssClass="registration_link" NavigateUrl="~/web_pages/admin/donation_type.aspx" runat="server">Go Back</asp:HyperLink>
            </span>
        </div>
    </div>
</asp:Content>
