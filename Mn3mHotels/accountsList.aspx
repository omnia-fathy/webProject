<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#000066" Text="Accounts List :"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
        <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username], [fname], [lname], [type], [nationality], [phone], [credit] FROM [guest]"></asp:SqlDataSource>
</asp:Content>

