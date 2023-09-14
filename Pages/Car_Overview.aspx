<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCMS.master" AutoEventWireup="true" CodeFile="Car_Overview.aspx.cs" Inherits="Pages_Car_Overview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Available Car:</h3>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Pages/Car_Add.aspx">Add new Car</asp:LinkButton>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="sds_car" ForeColor="#333333" 
            GridLines="None" Width="1000px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="roast" HeaderText="roast" SortExpression="roast" />
                <asp:BoundField DataField="country" HeaderText="country" 
                    SortExpression="country" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="review" HeaderText="review" 
                    SortExpression="review" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="sds_car" runat="server" ConnectionString="<%$ ConnectionStrings:CarConnection %>" DeleteCommand="DELETE FROM [car] WHERE [id] = @id" InsertCommand="INSERT INTO [car] ([name], [type], [price], [roast], [country], [image], [review]) VALUES (@name, @type, @price, @roast, @country, @image, @review)" SelectCommand="SELECT * FROM [car]" UpdateCommand="UPDATE [car] SET [name] = @name, [type] = @type, [price] = @price, [roast] = @roast, [country] = @country, [image] = @image, [review] = @review WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="roast" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="review" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="roast" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="review" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
