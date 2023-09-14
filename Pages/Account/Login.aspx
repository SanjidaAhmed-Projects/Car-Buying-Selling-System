<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;&nbsp;&nbsp;    <table>
        <tr>
            <td style="height: 40px">
                Login:
            </td>
            <td style="height: 40px">
                <asp:TextBox ID="txtLogin" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 40px">
                Password:
            </td>
            <td style="height: 40px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                <br />
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:LinkButton ID="LinkButton1" runat="server" 
        PostBackUrl="~/Pages/Account/Register.aspx">Register</asp:LinkButton>
</asp:Content>
