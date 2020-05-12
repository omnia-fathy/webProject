<%@ Page Language="C#" %>
<%@import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Hotel.mdf;Integrated Security=True";
       
        string strInsert = "INSERT INTO guest "
                    + " VALUES('" + txtUsername.Text + "', '"
                    + txtPassword.Text + "', '"
                    + txtFname.Text + "', '"
                    + txtLname.Text + "', '"
                    + ddlType.SelectedValue + "', '"
                    + ddlNationality.SelectedValue + "', '"
                    + txtPhone.Text + "', '"
                    + txtCredit.Text + "', '"
                    + txtemail.Text + "')";

        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
        try
        {
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();

            if (uploadPic.HasFile)
            {
                uploadPic.SaveAs(Server.MapPath("UserPic") + "\\" + txtUsername.Text + ".jpg");
            }
            lblmsg.Text = "Welcome " + txtFname.Text + " Your Account Has Been Successfully Created!!";
        }


        catch (SqlException err)
        {
            if (err.Number == 2627)
                lblmsg.Text = "Username already exists, Please Choose Another!!";
            else
                lblmsg.Text = "Sorry, Database Error, You may Try later!!";
        }

        catch
        {
            lblmsg.Text = "Sorry, System Error, You may Try later!!";
        }
                
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 26px;
            width: 176px;
        }
        .auto-style5 {
            width: 176px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style12 {
            height: 74px;
        }
        .auto-style13 {
            width: 210px;
            height: 74px;
        }
        .auto-style14 {
            width: 161px;
            height: 74px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="sign up"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="First name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFname" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Last name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLname" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="User name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Type:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server" Width="260px">
                        <asp:ListItem Value="L">Local</asp:ListItem>
                        <asp:ListItem Value="F">Foreigner</asp:ListItem>
                        <asp:ListItem Value="G">Group</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td class="auto-style2">
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
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Phone number:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="253px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="Credit card number:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCredit" runat="server" Width="252px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="email:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtemail" runat="server" Width="252px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="uppic" runat="server" Text="Upload picture: "></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:FileUpload ID="uploadPic" runat="server" />
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Sumbit" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#000066" Text="lblmsg"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
