<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="list_donation.aspx.cs" Inherits="HHO_NGO.web_pages.admin.list_donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/list.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Donation</div>
        <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="50" DataKeyNames="donation_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gv_donor_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="donation_id" HeaderText="Donation Id" InsertVisible="False" ReadOnly="True" SortExpression="donation_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="Donor Name" SortExpression="user_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dtype_name" HeaderText="Donation Type" SortExpression="dtype_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="donation_img" HeaderText="Donation Image">
                        <ControlStyle Height="50px" Width="50px" />
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
                    <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Accept Donation" Text="Accept">
                    <ControlStyle BackColor="#FF6F0F" BorderStyle="None" Font-Size="16px" ForeColor="White" Height="22px" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" Text="Delete">
                    <ControlStyle BackColor="#FF6F0F" BorderStyle="None" Font-Size="16px" ForeColor="White" Height="22px" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                    <asp:CommandField ButtonType="Button" HeaderText="Collection Task" SelectText="Add" ShowSelectButton="True">
                    <ControlStyle BackColor="#FF6F0F" BorderStyle="None" Font-Size="16px" ForeColor="White" Height="22px" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select d.*, dt.dtype_name,u.user_name from donation d,donation_type dt, user_details u where d.dtype_id = dt.dtype_id and d.user_id = u.user_id" DeleteCommand="DELETE FROM donation where [donation_id] = @donation_id" UpdateCommand="UPDATE donation SET donation_status = 'Accepted' WHERE (donation_id = @donation_id)">
            <DeleteParameters>
                <asp:Parameter Name="donation_id" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="donation_id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
