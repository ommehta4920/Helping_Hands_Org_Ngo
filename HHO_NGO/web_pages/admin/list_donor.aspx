<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="list_donor.aspx.cs" Inherits="HHO_NGO.web_pages.admin.list_donor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/list.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">List of Donors</div>
            <div class="searchbar">
                <asp:TextBox ID="txtsearch" runat="server" placeholder="Search Here..." CssClass="txtsearch" AutoPostBack="True"></asp:TextBox>
            </div>
             
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" FilterExpression="user_name like '%{0}%'" SelectCommand="SELECT * FROM [user_details] WHERE ([user_type] = @user_type)" DeleteCommand="DELETE FROM user_details where user_id = @user_id">
                <SelectParameters>
                    <asp:Parameter DefaultValue="donor" Name="user_type" Type="String" />
                </SelectParameters>
                <FilterParameters>
                    <asp:ControlParameter ControlID="txtsearch" Name="user_name" PropertyName="Text" />
                </FilterParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" ShowHeaderWhenEmpty="True" EmptyDataText="No Records Found!!!" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="user_id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gv_donor_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="Donor Id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="Donor Name" SortExpression="user_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id" />
                    <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True">
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
    </div>
</asp:Content>
