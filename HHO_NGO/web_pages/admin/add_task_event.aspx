<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="add_task_event.aspx.cs" Inherits="HHO_NGO.web_pages.admin.add_task_event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
    <link rel="stylesheet" href="../../css/admin/list.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">List of Volunteers</div>
        <asp:GridView ID="gv_task" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="user_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div class="auto-style1">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Volunteer Id">
                    <ItemTemplate>
                        <div class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("user_id") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="user_name" HeaderText="Volunteer Name" SortExpression="user_name" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
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
        <asp:Button runat="server" ID="btnassign" Text="Assign Task" CssClass="submit_btn" OnClick="btnassign_Click" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [user_name], [address] FROM [user_details] WHERE (([user_type] = @user_type) AND ([status] = @status))">
            <SelectParameters>
                <asp:Parameter DefaultValue="volunteer" Name="user_type" Type="String" />
                <asp:Parameter DefaultValue="Approve" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
