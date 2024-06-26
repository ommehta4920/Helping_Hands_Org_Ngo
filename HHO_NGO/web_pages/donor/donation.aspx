<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/donor.Master" AutoEventWireup="true" CodeBehind="donation.aspx.cs" Inherits="HHO_NGO.web_pages.donor.donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/donor/profile.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">
            <p class="auto-style1">Donation Form</p>
        </div>
        <div class="user-details">
            <div class="input-box">
                <span class="details">User ID</span><asp:TextBox ID="txtuser_id" CssClass="txtuser_id" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">User Name</span><asp:TextBox ID="txtuser_name" CssClass="txtuser_name" placeholder="Enter your name" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="input-box1">
                <span class="details">Pickup Location<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:TextBox ID="txtaddress" placeholder="Type pickup location of donation here..." runat="server" Rows="5" Columns="63" CssClass="txtaddress" TextMode="MultiLine" ToolTip="Write donation pickup address."></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Donation Type<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_donation_type" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddl_donation_type" CssClass="txtuser_id" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_donation_type_SelectedIndexChanged"></asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="input-box">
                <span class="details">Quantity / Amount<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:TextBox ID="txtqty" CssClass="txtuser_id" placeholder="Enter Donation Quantity / Amount" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Upload Image<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" CssClass="txtuser_id" Width="100%" BorderStyle="None" AllowMultiple="True" />
            </div>
        </div>
        <div class="button">
            <asp:Button ID="Button1" CssClass="btnedit" runat="server" Text="Make Donation" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
