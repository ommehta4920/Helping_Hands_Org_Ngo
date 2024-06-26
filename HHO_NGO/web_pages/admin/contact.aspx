<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="HHO_NGO.web_pages.admin.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/list.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Contact</div>
        <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="contact_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="contact_id" HeaderText="Contact Id" InsertVisible="False" ReadOnly="True" SortExpression="contact_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="Email Id" SortExpression="email" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#001d23" ForeColor="white" />
                <HeaderStyle BackColor="#f1f1f1" Font-Bold="True" ForeColor="#ff6f0f" />
                <PagerStyle BackColor="white" ForeColor="#ff6f0f" HorizontalAlign="center" />
                <RowStyle ForeColor="#001d23" Height="25px" Font-Size="16px" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contact]">
        </asp:SqlDataSource>
    </div>
</asp:Content>
