<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .form-group { margin-bottom: 10px; }
        .status { margin-top: 10px; font-weight: bold; }
        .success { color: green; }
        .error { color: red; }
    </style>

 <form id="form1" runat="server">
        <div>
            <h2>Send Email</h2>

            <div class="form-group">
                <asp:Label Text="To:" runat="server" />
                <asp:TextBox ID="txtTo" runat="server" Width="300" />
            </div>

            <div class="form-group">
                <asp:Label Text="Subject:" runat="server" />
                <asp:TextBox ID="txtSubject" runat="server" Width="300" />
            </div>

            <div class="form-group">
                <asp:Label Text="Body (HTML):" runat="server" />
                <asp:TextBox ID="txtBody" TextMode="MultiLine" Rows="5" Width="300" runat="server" />
            </div>

            <asp:Button ID="btnSend" Text="Send Email" OnClick="btnSend_Click" runat="server" />

            <div class="status">
                <asp:Label ID="lblStatus" runat="server" />
            </div>
        </div>
    </form>
</asp:Content>
