<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Car.aspx.cs" Inherits="Pages.Pages_Car" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        Select a type:
        <asp:DropDownList ID="DropDownList1" runat="server"
                          AutoPostBack="True" DataSourceID="sds_type"
                          DataTextField="type" DataValueField="type" 
                          OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sds_type" runat="server" ConnectionString="<%$ ConnectionStrings:CarConnection %>" SelectCommand="SELECT DISTINCT [type] FROM [car] ORDER BY [type]"></asp:SqlDataSource>
    </p>
    <p><asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label></p>
</asp:Content>

