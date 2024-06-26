<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="HHO_NGO.web_pages.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration</title>
    <link rel="stylesheet" href="../css/registration.css" />
    <link rel="icon" type="image/x-icon" href="../img/website-logo.png" />
</head>
<body>
    <div class="container">
        <form id="registration_form" runat="server">
        <div class="title">Registration</div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">User Id</span>
                    <asp:TextBox ID="txtuser_id" runat="server" ReadOnly="True" AutoPostBack="True"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">User Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuser_name" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ToolTip="This field is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtuser_name" Display="Dynamic" ErrorMessage="* Only alphabets are allowed" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtuser_name" placeholder="Enter your name" runat="server"></asp:TextBox>
                </div>
                <div class="input-box1">
                    <span class="details">Address<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaddress" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="* Only a-z, A-Z, 0-9 and (, . #) are valid" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9,.# ]*$"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtaddress" placeholder="Type your address here..." runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*Invalid Email id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtemail" placeholder="Enter your email" runat="server" TextMode="Email"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtph_no" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtph_no" Display="Dynamic" ErrorMessage="* Phone number contains only 10 digits[0-9]." ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtph_no" placeholder="Enter your phone number" runat="server" MaxLength="10" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*Password must contain atleast 6 characters, one digit and one special character." ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.*(?=.{6,})(?=.*[\d])(?=.*[\W]).*$"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtpassword" placeholder="Enter your password" runat="server" TextMode="Password" MaxLength="16"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtc_password" ErrorMessage="*This field is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtc_password" Display="Dynamic" ErrorMessage="*Confirm password is not same as Password." ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </span>
                    <asp:TextBox ID="txtc_password" placeholder="Confirm your password" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="user_role-details">
                <asp:RadioButton ID="dot1" GroupName="role" runat="server" Checked="True" />
                <asp:RadioButton ID="dot2" GroupName="role" runat="server" />

                <div class="category">
                    <span class="role-title">Select your Role:</span>
                    <label for="dot1">
                        <span class="dot one"></span>
                        <span class="role">Donor</span>
                    </label>
                    <label for="dot2">
                        <span class="dot two"></span>
                        <span class="role">Volunteer</span>
                    </label>
                </div>
            </div>
            <div class="button">
                <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" />
            </div>
            <div class="login-link">
                <span>Already a user?
                <asp:HyperLink ID="login_link" NavigateUrl="~/Web_Pages/login.aspx" runat="server">Login</asp:HyperLink>
                    <br />
                </span>
            </div>
        </form>
    </div>
</body>
</html>
