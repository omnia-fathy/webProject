<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style12 {
        height: 74px;
        width: 20%;
    }
        .auto-style13 {
            width: 210px;
            height: 74px;
        }
        .auto-style14 {
        height: 55px;
        width: 20%;
    }
    .auto-style16 {
        width: 20%;
    }
    .auto-style17 {
        height: 44px;
        width: 20%;
    }
    .auto-style18 {
        width: 210px;
        height: 44px;
    }
    .auto-style19 {
        height: 31px;
    }
    .auto-style20 {
        width: 210px;
        height: 31px;
    }
    .auto-style21 {
        height: 56px;
        width: 20%;
    }
    .auto-style22 {
        height: 56px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Label ID="Editp" runat="server" Font-Size="Large" Text="Edit Profile:"></asp:Label>
</p>
<table class="auto-style5">
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" Text="First name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFname" runat="server" Width="254px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Text="Last name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLname" runat="server" Width="254px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label9" runat="server" Text="User name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="254px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label10" runat="server" Text="New Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label11" runat="server" Text="Confirm New Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label13" runat="server" Text="Old Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfirm0" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label5" runat="server" Text="Type:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server" Width="260px">
                        <asp:ListItem Value="L">Local</asp:ListItem>
                        <asp:ListItem Value="F">Foreigner</asp:ListItem>
                        <asp:ListItem Value="G">Group</asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
    <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label6" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:DropDownList ID="ddlNationality" runat="server" Height="21px" Width="260px">
                        <asp:ListItem>Egyptian</asp:ListItem>
                        <asp:ListItem>British</asp:ListItem>
                        <asp:ListItem>Austrian</asp:ListItem>
                        <asp:ListItem>Canadian</asp:ListItem>
                        <asp:ListItem>French</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                        <asp:ListItem>Japanese</asp:ListItem>
                        <asp:ListItem>Swedish</asp:ListItem>
                        <asp:ListItem>Turkish</asp:ListItem>
                        <asp:ListItem>American</asp:ListItem>
                        <asp:ListItem>Korean</asp:ListItem>
                        <asp:ListItem>Spanish</asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
    <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label7" runat="server" Text="Phone number:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="253px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label8" runat="server" Text="Credit card number:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCredit" runat="server" Width="252px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label12" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtemail" runat="server" Width="252px"></asp:TextBox>
                </td>
                </tr>
    <tr>
                <td class="auto-style12">
                    <asp:Label ID="uppic" runat="server" Text="Change picture: "></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:FileUpload ID="uploadPic" runat="server" />
                </td>
                </tr>
    <tr>
                <td class="auto-style17">
                </td>
                <td class="auto-style18">
                </td>
                </tr>
    <tr>
                <td class="auto-style19">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Sumbit" />
                </td>
                <td class="auto-style20">
                </td>
                </tr>
    <tr>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                </tr>
    <tr>
                <td class="auto-style19" colspan="2">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#000066" Text="lblmsg"></asp:Label>
                </td>
                </tr>
</table>
</asp:Content>

