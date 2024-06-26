<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/donor.Master" AutoEventWireup="true" CodeBehind="list_donation.aspx.cs" Inherits="HHO_NGO.web_pages.donor.list_donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/donor/lists.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Donation History</div>
        <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="7" DataKeyNames="donation_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="donation_id" HeaderText="Donation Id" InsertVisible="False" ReadOnly="True" SortExpression="donation_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dtype_name" HeaderText="Donation Type" SortExpression="dtype_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="donation_img" HeaderText="Donation Image">
                        <ControlStyle Height="55px" Width="55px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pickup_location" HeaderText="Pickup Location" SortExpression="pickup_location" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="donation_status" HeaderText="Status" SortExpression="donation_status" >
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select donation.*,donation_type.dtype_name from donation, donation_type where donation.dtype_id = donation_type.dtype_id and donation.user_id = @user_id">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="d_id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
