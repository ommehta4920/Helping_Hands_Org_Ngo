<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="HHO_NGO.web_pages.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Helping Hands Organization</title>
    <link rel="stylesheet" href="../css/home.css" />
    <link rel="stylesheet" href="../css/donation.css" />
    <link rel="icon" type="image/x-icon" href="../img/website-logo.png" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- header -->
        <div class="banner">
            <div class="slider">
                <asp:Image ID="slideImg" ImageUrl="~/img/slide-1.png" runat="server" />
            </div>
            <div class="overlay">
                <div class="navbar">
                    <div class="logo">
                        <asp:HyperLink runat="server" NavigateUrl="~/web_pages/home.aspx">
                        <asp:Image runat="server" ImageUrl="~/img/website-logo.png" Width="10%" />
                        </asp:HyperLink>
                    </div>
                    <div class="nav-links">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="~/web_pages/home.aspx">Home</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="~/web_pages/donation.aspx">Donation</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="~/web_pages/event_gallery.aspx">Event</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="~/web_pages/Contact.aspx">Contact</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="~/web_pages/login.aspx" Text="Login"></asp:HyperLink>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content" id="content1">
                    <h1 style="color: #ff6f0f;">Helping Hands <span style="color: white;">Organization Welcomes You </span></h1>
                    <h3 style="margin-bottom: 20px;">Let's Change The World With Humanity And Save More Life With Our Helping Hands.</h3>
                    <asp:HyperLink runat="server" NavigateUrl="~/web_pages/registration.aspx">
                        <asp:Button runat="server" CssClass="btn" ID="btn_register" Text="Become a Volunteer" OnClick="btn_register_click" />
                    </asp:HyperLink>
                </div>
            </div>
        </div>

        <!-- About US -->
        <section class="about">
            <div class="about-img">
                <asp:Image runat="server" ImageUrl="~/img/about-2.png" AlternateText="AboutUs" ID="about_2" />
                <asp:Image runat="server" ImageUrl="~/img/about-1.png" AlternateText="AboutUs" ID="about_1" />
            </div>
            <div class="about-txt">
                <div class="about-title">
                    <h3>About Us</h3>
                </div>
                <h1>We Help People In Need Around The World</h1>
                <div class="founder-txt">
                    <p>We Change The World With Humanity And Save More Life With Our Helping Hands.</p>
                    <h4>- Founder</h4>
                </div>
                <p>
                    Our strength lies not only in the words we stand by, but most importantly
                in the actions of our initiatives. From the moment we started our work in 2000,
                we understood that by working together we could overcome our challenges
                much more efficiently, and that is why we ultimately decided to launch Helping Hands
                Organization. We strive to make a positive change in all of our pursuits.
                </p>
                <asp:Button runat="server" CssClass="btn" ID="btn_contact" Text="Contact Us" OnClick="btn_contact_Click" />
            </div>
        </section>

        <!-- Donation -->
        <section class="donation">
            <div class="donation about-title">
                <h3>Donors Can Donate</h3>
            </div>
            <h2>"Giving Is Not Just About Making A Donation. It Is About Making A Difference."</h2>
        </section>

        <div class="cards">
            <div class="outer">
                <div class="card" style="--delay: -1;">
                    <div class="header">
                        <div class="types">
                            <div class="img">
                                <asp:Image runat="server" ImageUrl="~/img/food donation.png" AlternateText="Food Donation" />
                            </div>
                            <div class="details">
                                <h1>Food Donation</h1>
                                <p>
                                    Helping Hands Organization helps donor to donates their remaining
                          food or unuseful things to them which we can use to redistributes to poor people.
                          The system will help in easy way to reduce food wastage and use in useful way
                          and also provide donation service for other things to.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card" style="--delay: 0;">
                    <div class="header">
                        <div class="types">
                            <div class="img">
                                <asp:Image runat="server" ImageUrl="~/img/clothes donation2.png" AlternateText="Clothes Donation" />
                            </div>
                            <div class="details">
                                <h1>Clothes Donation</h1>
                                <p>
                                    Don't we all have clothes that are just lying at some corner of our wardrobe?
                          It could be the dress that is out of fashion or a college t-shirt that doesn't fit you anymore.
                          Whatever it is, you know you are hoarding something that you won't be using anymore.
                          Donate your unwanted clothes and we will make sure they reach someone in need.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card" style="--delay: 1;">
                    <div class="header">
                        <div class="types">
                            <div class="img">
                                <asp:Image runat="server" ImageUrl="~/img/bookdonation.png" AlternateText="Book Donation" />
                            </div>
                            <div class="details">
                                <h1>Books Donation</h1>
                                <p>
                                    "Knowledge increases by sharing, but not Saving."
                          Books are uniquely portable magic which carries you attached feelings forward.
                          We are commited to carrying your emotions with your books and making
                          them grow older! Your books can help someone in the same way it did for you.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card" style="--delay: 2;">
                    <div class="header">
                        <div class="types">
                            <div class="img">
                                <asp:Image runat="server" ImageUrl="~/img/medicinebox donation.png" AlternateText="Medicine Donation" />
                            </div>
                            <div class="details">
                                <h1>Medicine Donation</h1>
                                <p>
                                    Your surplus medicines can save another's life.
                          You can donate your surplus medicines or old medical equipment to our NGO.
                          We will provide them medicines and medical equipment and ensure you that
                          it will help many people who don't have enough money for treatment against diseases.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card" style="--delay: 2;">
                    <div class="header">
                        <div class="types">
                            <div class="img">
                                <asp:Image runat="server" ImageUrl="~/img/other donation.png" AlternateText="Other Donation" />
                            </div>
                            <div class="details">
                                <h1>Other Donation</h1>
                                <p>
                                    Your surplus medicines can save another's life.
                          You can donate your surplus medicines or old medical equipment to our NGO.
                          We will provide them medicines and medical equipment and ensure you that
                          it will help many people who don't have enough money for treatment against diseases.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

      <!-- Event
        <section class="event">
            <div class="donation about-title">
                <h3>Upcoming Event</h3>
            </div>
            <p>There is no event right now.</p>
        </section>-->

        <!-- Footer -->
        <footer>
            <div class="footer-content">
                <h3>Helping Hands <span>Organization </span></h3>
                <p>At Helping Hands Organization, we are dedicated to making a positive impact in the lives of those who need it the most. As a non-profit organization, our mission is to provide aid and support to individuals and communities in need, regardless of age, gender, or social background.</p>
                <ul class="socials">
                    <li>
                        <asp:HyperLink runat="server">
                            <asp:Image runat="server" ImageUrl="~/img/faceb.svg" AlternateText="Facebook" />
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink runat="server">
                            <asp:Image runat="server" ImageUrl="~/img/tweet.svg" AlternateText="Twitter" />
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink runat="server">
                            <asp:Image runat="server" ImageUrl="~/img/external-youtube-multimedia-prettycons-flat-prettycons.png" AlternateText="YouTube" Width="80%" />
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink runat="server">
                            <asp:Image runat="server" ImageUrl="~/img/Igram.svg" AlternateText="Instagram" />
                        </asp:HyperLink>
                    </li>
                </ul>
            </div>
            <div class="footer-bottom">
                <p>Copyright &COPY;2023 <span>HelpingHandsOrganization. </span></p>
            </div>
        </footer>
    </form>
</body>
</html>
