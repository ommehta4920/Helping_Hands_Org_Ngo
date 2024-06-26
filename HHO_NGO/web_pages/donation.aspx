<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/main.Master" AutoEventWireup="true" CodeBehind="donation.aspx.cs" Inherits="HHO_NGO.web_pages.donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/donation.css" />
    <link rel="stylesheet" href="../css/main_master.css" />
    <link rel="stylesheet" href="../css/contact.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Donation -->
    <div class="donation-desc">
        <h1>"Your support is more than a donation, It is an investment in the lives of many people."</h1>
        <span>
            <h4>
            To donate easily from Your Doorstep click the doante button</>
            
        </span>
    </div>
        <asp:Button runat="server" CssClass="donate-btn" Text="Donate" ID="btn_donation_top" OnClick="btn_donation_top_Click" />

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

    <!-- Donation Process -->
    <div class="donors-do">
        <h1>What You do?</h1>
    </div>
    <div class="donor-table">
        <table>
            <tr>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img1resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img2resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img3resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img4resize.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>Fill up the donation form</p>
                </td>
                <td>
                    <p>Get donation ready and packed</p>
                </td>
                <td>
                    <p>Check date & time in your dashboard to know when volunteer will come</p>
                </td>
                <td>
                    <p>Handover items to Pickup Partner at the doorstep</p>
                </td>
            </tr>
        </table>
    </div>

    <div class="ngo-do">
        <h1>What We do?</h1>
    </div>
    <div class="ngo-table">
        <table>
            <tr>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/1876_SkVNQSBGQU1PIDg3Mi0wMQ.jpg" Width="60%" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img6resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img7resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img8resize.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>Our organization receives the donation</p>
                </td>
                <td>
                    <p>After receiving it we does some quality checks</p>
                </td>
                <td>
                    <p>Then we try to store & maintain some donation like books & furtinure</p>
                </td>
                <td>
                    <p>And provide them to those who really need</p>
                </td>
            </tr>
        </table>
    </div>

    <div class="ngo-do">
        <h1>How does donation Help?</h1>
    </div>
    <div class="ngo-table">
        <table>
            <tr>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img9resize.png" Width="60%" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img10resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img11resize.png" />
                </td>
                <td>
                    <asp:Image runat="server" ImageUrl="~/img/donate_book_img12resize.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <p>Develop a culture of sharing & helping others</p>
                </td>
                <td>
                    <p>Your old or surplus items will helps other like it helped you </p>
                </td>
                <td>
                    <p>Reusing these items will also save environment</p>
                </td>
                <td>
                    <p>Be the cause of literacy & make the difference the world needs</p>
                </td>
            </tr>
        </table>
    </div>

    <div class="donation-btn">
            <asp:Button runat="server" Id="btn_donation_bottom" CssClass="btn_donation_bottom" Text="Click Here to Donate Your Loved Items" OnClick="btn_donation_bottom_Click" />
    </div>
</asp:Content>
