<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/main.Master" AutoEventWireup="true" CodeBehind="event_gallery.aspx.cs" Inherits="HHO_NGO.web_pages.event_gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/event_gallery.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 id="title">Event & Camp Images</h3>
    <asp:DataList ID="DataList1" runat="server" Width="100%" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False">
        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Top" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" CssClass="album" ImageUrl='<%# Eval("name","~/event_gallery/{0}") %>' Width="350px" Height="200px" />
        </ItemTemplate>
    </asp:DataList>
    <br />
    </asp:Content>
