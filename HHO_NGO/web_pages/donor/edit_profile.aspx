<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/donor.Master" AutoEventWireup="true" CodeBehind="edit_profile.aspx.cs" Inherits="HHO_NGO.web_pages.donor.edit_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/donor/profile.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Edit Profile</div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">User Id</span>
                    <asp:TextBox ID="txtuser_id" CssClass="txtuser_id" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">User Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser_name" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtuser_name" Display="Dynamic" ErrorMessage="*Name should only contain A-Z or a-z." ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtuser_name" CssClass="txtuser_name" placeholder="Enter your name" runat="server"></asp:TextBox>
                </div>
                <div class="input-box1">
                    <span class="details">Address<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </span>
                    <asp:TextBox ID="txtaddress" placeholder="Type your address here..." runat="server" Rows="5" Columns="63" CssClass="txtaddress" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*Invalid Email id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtemail" CssClass="txtemail" placeholder="Enter your email" runat="server"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtph_no" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtph_no" Display="Dynamic" ErrorMessage="* Phone number contains only 10 digits[0-9]." ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtph_no" CssClass="txtph_no" placeholder="Enter your phone number" runat="server"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*Password must contain atleast 6 characters, one digit and one special character." ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.*(?=.{6,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>
                    </span><asp:TextBox ID="txtpassword" CssClass="txtpassword" placeholder="Enter your password" runat="server"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details"><asp:label ID="c_password_lbl" runat="server"> Confirm Password </asp:label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtc_password" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtc_password" Display="Dynamic" ErrorMessage="*Confirm password is not same as Password." ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </span>
                    <asp:TextBox ID="txtc_password" CssClass="txtc_password" placeholder="Confirm your password" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="button">
                <asp:Button ID="Button1" CssClass="btnedit" runat="server" Text="Update Your Profile" OnClick="Button1_Click" />
            </div>
            <div class="login-link">
            <span>Don't want to update your profile!
                <asp:HyperLink ID="login_link" CssClass="login_link" NavigateUrl="~/web_pages/donor/profile.aspx" runat="server">Go Back</asp:HyperLink>
            </span><br />
        </div>
    </div>
</asp:Content>
