<%@ Page Title="" Language="C#" MasterPageFile="~/master_pages/admin.Master" AutoEventWireup="true" CodeBehind="event_img.aspx.cs" Inherits="HHO_NGO.web_pages.admin.event_img" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/admin/add_types.css" />
    <link rel="stylesheet" href="../../css/admin/event_form.css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="title">Add Event Images</div>
        <div class="user-details">
            <div class="input-box">
                <span class="details">Event Image<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*This field is required" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </span>
                &nbsp;<asp:FileUpload ID="FileUpload1" CssClass="file_upload" runat="server" BorderStyle="Solid" Width="210%" AllowMultiple="True" accept=".png,.jpg,.jpeg,.gif" />
            </div>
            <br />
        </div>
        <asp:Button ID="btn_upload" CssClass="btn_upload" runat="server" Text="Upload" OnClick="btn_upload_Click" />
    </div>
</asp:Content>
