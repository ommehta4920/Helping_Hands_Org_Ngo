<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="add_task.aspx.cs" Inherits="HHO_NGO.web_pages.admin.add_task" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/task.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Add Task</div>
        <br />
        <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="user_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gv_donor_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="Volunteer Id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="Volunteer Name" SortExpression="user_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" HeaderText="Select Volunteer" ShowSelectButton="True">
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
        <div class="user-details">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [user_name], [address] FROM [user_details] WHERE (([user_type] = @user_type) AND ([status] = @status))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="volunteer" Name="user_type" Type="String" />
                    <asp:Parameter DefaultValue="Approve" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="input-box">
                <span class="details">Donation Pickup Location</span>
                <asp:TextBox ID="txtd_location" CssClass="txtd_location" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Pickup Date</span>
                <asp:TextBox ID="txt_date" CssClass="txt_date" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Delivery Duration(in hrs/ days)</span>
                <asp:TextBox ID="txt_duration" CssClass="txt_duration" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Donation Type</span>
                <asp:TextBox ID="txt_tasktype" Text="Donation Delivery" ReadOnly="true" CssClass="txt_date" runat="server"></asp:TextBox>
            </div>
            <div class="input-box1">
                <span class="details">Delivery Description</span>
                <asp:TextBox ID="txt_desc" CssClass="txt_desc" Rows="5" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="button">
                <asp:Button ID="btnadd" CssClass="add_event" runat="server" Text="Add" OnClick="btnadd_Click" />
        </div>
    </div>
</asp:Content>
