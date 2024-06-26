<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="HHO_NGO.web_pages.admin._event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/event.css" />
    <link rel="stylesheet" href="../../css/admin/donation_type.css" />
    <link rel="stylesheet" href="../../css/admin/lists.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Event</div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select event.*, event_type.etype_name from event, event_type where event.etype_id = event_type.etype_id" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([etype_id], [event_image], [date], [time], [address], [city], [state], [duration]) VALUES (@etype_id, @event_image, @date, @time, @address, @city, @state, @duration)" UpdateCommand="UPDATE [event] SET [etype_id] = @etype_id, [event_image] = @event_image, [date] = @date, [time] = @time, [address] = @address, [city] = @city, [state] = @state, [duration] = @duration WHERE [event_id] = @event_id">
                <DeleteParameters>
                    <asp:Parameter Name="event_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="etype_id" Type="Int32" />
                    <asp:Parameter Name="event_image" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter DbType="Time" Name="time" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="etype_id" Type="Int32" />
                    <asp:Parameter Name="event_image" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter DbType="Time" Name="time" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter Name="event_id" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="gv_donor" runat="server" CssClass="grid_view" Height="100%" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="event_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gv_donor_SelectedIndexChanged" >
                <Columns>
                    <asp:BoundField DataField="event_id" HeaderText="Event Id" InsertVisible="False" ReadOnly="True" SortExpression="event_id" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="etype_name" HeaderText="Event Type Name" SortExpression="etype_name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="event_image" HeaderText="Event Image">
                        <ControlStyle Height="50px" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="Location" SortExpression="address" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="duration" HeaderText="Duration (In Days)" SortExpression="duration">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" Text="Delete">
                    <ControlStyle BackColor="#FF6F0F" BorderStyle="None" Font-Size="16px" ForeColor="White" Height="22px" Width="80px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                    <asp:CommandField ButtonType="Button" HeaderText="Add Task" SelectText="Add" ShowSelectButton="True">
                    <ControlStyle BackColor="#FF6F0F" BorderStyle="None" ForeColor="White" Height="22px" Width="80px" />
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
