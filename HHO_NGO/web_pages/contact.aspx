<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="HHO_NGO.web_pages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/contact.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="content">
            <div class="left-side">
                <div class="address details">
                    <asp:Image runat="server"  ImageUrl="~/img/maps-and-flags.png" Width="15%" />
                    <div class="topic" style="color: #ff6f0f">Address</div>
                    <div class="text-one">Bharuch - 392 001</div>
                    <div class="text-two">Gujarat, India</div>
                </div>
                <div class="phone details">
                    <asp:Image runat="server" ImageUrl="~/img/phone-call.png" Width="15%" />
                    <div class="topic" style="color: #ff6f0f">Phone</div>
                    <div class="text-one">0000 0000 0000</div>
                </div>
                <div class="email details">
                    <asp:Image runat="server" ImageUrl="~/img/email.png" Width="15%" />
                    <div class="topic" style="color: #ff6f0f">Email</div>
                    <div class="text-one">helpinghandsorg@gmail.com</div>
                </div>
            </div>
            <div class="right-side">
                <div class="topic-text">
                    <h3>Contact Us</h3>
                </div>
                <p>If you have any types of quries related to our NGO work or donation, you can send us message from here. It's our pleasure to help you.</p>
                <div class="input-box">
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter your name" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="* This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="* Only alphabets are allowed" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="txtemail" runat="server" placeholder="Enter your email" CssClass="txtbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="* This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="* Invalid Email id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="txtphno" runat="server" placeholder="Enter your mobile number" CssClass="txtbox" MaxLength="10" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphno" Display="Dynamic" ErrorMessage="* This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtphno" Display="Dynamic" ErrorMessage="* Invalid Mobile Number" ForeColor="Red" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="txtmessage" runat="server" Rows="5" placeholder="Type your message here..." CssClass="txtarea" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="* This field is required" ControlToValidate="txtmessage" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="button">
                    <asp:Button Text="Send Now" runat="server" ID="btnsend" CssClass="button" OnClick="btnsend_Click" />
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtmessage" Display="Dynamic" ErrorMessage="* Only a-z, A-Z, 0-9 and (, . #) are valid" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9,.# ]*$"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div>
</asp:Content>
