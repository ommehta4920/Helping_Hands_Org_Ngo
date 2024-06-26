<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/volunteer.Master" AutoEventWireup="true" CodeBehind="list_event.aspx.cs" Inherits="HHO_NGO.web_pages.volunteer.list_event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/volunteer/lists.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Event Service Task</div>
        <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="task_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="task_id" HeaderText="Event Task Id" InsertVisible="False" ReadOnly="True" SortExpression="task_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="task_date" HeaderText="Task Date" SortExpression="task_date" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="duration" HeaderText="Task Duration" SortExpression="duration" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="task_desc" HeaderText="Description" SortExpression="task_desc" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Column1" HeaderText="Event Name" SortExpression="Column1" ReadOnly="True" >
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select t.*, (Select et.etype_name from event_type et, event e where et.etype_id=e.etype_id) from Vtask t, event e where t.user_id = @user_id" UpdateCommand="UPDATE donation_delivery SET delivery_status = 'Complete' WHERE (delivery_id = @delivery_id)">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="v_id" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="delivery_id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
