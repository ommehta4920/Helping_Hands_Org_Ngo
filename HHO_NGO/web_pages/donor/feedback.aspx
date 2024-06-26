<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/donor.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="HHO_NGO.web_pages.donor.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/donor/feedback.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Feedback</div>
        <div class="user-details">
            <div class="input-box">
                <span class="details">User Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuser_name" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ToolTip="This field is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtuser_name" Display="Dynamic" ErrorMessage="*Name should only contain A-Z or a-z." ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                </span>
                <asp:TextBox ID="txtuser_name" CssClass="txtuser_name" placeholder="Enter your name" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Date / Time</span>
                <asp:TextBox ID="txtdate_time" CssClass="txtdate_time" runat="server" ReadOnly="True" TextMode="DateTime"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*Invalid Email id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </span>
                <asp:TextBox ID="txtemail" CssClass="txtemail" placeholder="Enter your email" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtph_no" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtph_no" Display="Dynamic" ErrorMessage="* Phone number contains only 10 digits[0-9]." ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                </span>
                <asp:TextBox ID="txtph_no" CssClass="txtph_no" placeholder="Enter your phone number" runat="server" MaxLength="10" TextMode="Phone"></asp:TextBox>
            </div>
            <div class="input-box1">
                <span class="details">Message<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmessage" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
                <asp:TextBox ID="txtmessage" CssClass="txtmessage" placeholder="Type your feedback message here..." runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
        <div class="button">
            <asp:Button ID="btnsend" CssClass="btnsend" runat="server" Text="Send Feedback Message" OnClick="btnsend_Click" />
        </div>
    </div>
</asp:Content>
