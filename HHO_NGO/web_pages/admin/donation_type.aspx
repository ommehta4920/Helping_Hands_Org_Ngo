<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="donation_type.aspx.cs" Inherits="HHO_NGO.web_pages.admin.donation_type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/donation_type.css" />
    <link rel="stylesheet" href="../../css/admin/lists.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Donation Types</div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [dtype_id], [dtype_name], [dtype_desc] FROM [donation_type]" DeleteCommand="DELETE FROM [donation_type] WHERE [dtype_id] = @dtype_id" InsertCommand="INSERT INTO [donation_type] ([dtype_name], [dtype_desc]) VALUES (@dtype_name, @dtype_desc)" UpdateCommand="UPDATE [donation_type] SET [dtype_name] = @dtype_name, [dtype_desc] = @dtype_desc WHERE [dtype_id] = @dtype_id">
                <DeleteParameters>
                    <asp:Parameter Name="dtype_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="dtype_name" Type="String" />
                    <asp:Parameter Name="dtype_desc" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dtype_name" Type="String" />
                    <asp:Parameter Name="dtype_desc" Type="String" />
                    <asp:Parameter Name="dtype_id" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="dtype_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="dtype_id" HeaderText="Donation Type Id" InsertVisible="False" ReadOnly="True" SortExpression="dtype_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dtype_name" HeaderText="Donation Type Name" SortExpression="dtype_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dtype_desc" HeaderText="Donation Type Description" SortExpression="dtype_desc" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True">
                    <ControlStyle BackColor="#FF6F0F" BorderStyle="None" Font-Size="16px" ForeColor="White" Height="22px" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:CommandField ButtonType="Button" HeaderText="Delete" SelectText="Delete" ShowDeleteButton="True">
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
        <div class="button">
            <asp:Button ID="btnadd" CssClass="btns" runat="server" Text="Click Here To Add" OnClick="btnadd_Click" />
        </div>
    </div>
</asp:Content>
