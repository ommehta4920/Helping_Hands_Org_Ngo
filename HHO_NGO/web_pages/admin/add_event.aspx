<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="add_event.aspx.cs" Inherits="HHO_NGO.web_pages.admin.add_event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/event_form.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Add Event</div>
        <div class="user-details">
            <div class="input-box">
                <span class="details">Event Type<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl_etype" ErrorMessage="*This Field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>&nbsp;<asp:DropDownList ID="ddl_etype" CssClass="ddl_event_type" accept=".png,.jpg,.jpeg,.gif" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataTextField="etype_name" DataValueField="etype_id" OnSelectedIndexChanged="ddl_etype_SelectedIndexChanged">
                    
                </asp:DropDownList>
            </div>
            <div class="input-box">
                <span class="details">Event Image<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>
                &nbsp;<asp:FileUpload ID="FileUpload1" CssClass="file_upload" runat="server" BorderStyle="None" />
            </div>
            <div class="input-box">
                <span class="details">Date<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdate" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>
                &nbsp;<asp:TextBox ID="txtdate" CssClass="txtdate" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Time<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_time" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>
                &nbsp;<asp:TextBox ID="txt_time" CssClass="txttime" runat="server" TextMode="Time"></asp:TextBox>
            </div>
            <div class="input-box1">
                <span class="details">Event Location<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>
                <asp:TextBox ID="txtaddress" placeholder="Write event location here..." runat="server" Rows="5" Columns="63" CssClass="txtaddress" TextMode="MultiLine"></asp:TextBox>
            </div>


            <div class="input-box">
                <span class="details">Select a state<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl_state" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>&nbsp;
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddl_state" CssClass="ddl_state" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                            <asp:ListItem>--STATE--</asp:ListItem>
                            <asp:ListItem>Gujarat</asp:ListItem>
                            <asp:ListItem>Maharashtra</asp:ListItem>
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
            <div class="input-box">
                <span class="details">Select a city<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddl_city" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>&nbsp;
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddl_city" CssClass="ddl_city" runat="server" AutoPostBack="true">
                                <asp:ListItem>--CITY--</asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>

            </div>
                
            <div class="input-box">
                <span class="details">Duration (In Days)<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtduration" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>
                &nbsp;<asp:TextBox ID="txtduration" CssClass="txtduration" runat="server" TextMode="Number"></asp:TextBox>
            </div>
        </div>
        <div class="button">
            <asp:Button ID="btnadd" CssClass="add_event" runat="server" Text="Add" OnClick="btnadd_Click" />
        </div>
    </div>
</asp:Content>
