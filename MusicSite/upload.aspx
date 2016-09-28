<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" MasterPageFile="~/Master.Master"
    Inherits="MusicSite.index" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <link rel="stylesheet" type="text/css" href="Style/bootstrap.css" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container-fluid">
        <asp:FileUpload ID="FileUpload1" runat="server"  />
        <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadFile" CssClass="btn-success" />
        <hr />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered"
            AutoGenerateColumns="false" EmptyDataText="No files uploaded">
            <Columns>
                <asp:BoundField DataField="Text" HeaderText="File Name" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>'
                            runat="server" OnClick="DownloadFile"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDelete" Text="Delete" CommandArgument='<%# Eval("Value") %>'
                            runat="server" OnClick="DeleteFile" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>
