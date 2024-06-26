    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HHO_NGO.web_pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css" />
    <link rel="icon" type="image/x-icon" href="../img/website-logo.png" />
</head>
<body>
     <div class="container">
        <div class="title">Login</div>
        <form id="login_form" runat="server">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="* Invalid E-mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </span>
                    <asp:TextBox ID="txtemail" placeholder="Enter your email" runat="server"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>
                    <asp:TextBox ID="txtpassword" placeholder="Enter your password" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="button">
                    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                </div>
            </div>
        </form>
        <div class="login-link">
            <span>Don't have an account?
                <asp:HyperLink ID="registration_link" NavigateUrl="~/Web_Pages/registration.aspx" runat="server">Register</asp:HyperLink>
            </span>
        </div>
    </div>
</body>
</html>
