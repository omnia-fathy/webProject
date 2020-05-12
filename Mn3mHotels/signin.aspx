<%@ Page Language="C#" %>
<%@import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Hotel.mdf;Integrated Security=True";

        // Create SQL SELECT Statement
        String tableName = "";
        switch(signinas.SelectedIndex) {
            case 0: tableName = "guest"; break;
            case 1: tableName = "staff"; break;
            case 2: tableName = "admin"; break;
        }
        
        string strSelect = "SELECT * FROM "+tableName
            + " WHERE username = '" + txtUserName.Text + "'"
            + " AND Password = '" + txtPassword.Text + "'";

        // Create SQL Command
        SqlCommand cmdSELECT = new SqlCommand(strSelect, conn);

        SqlDataReader reader;

        conn.Open();
        reader = cmdSELECT.ExecuteReader();


        if (reader.Read())
        {

            //HttpCookie koko = new HttpCookie("userinfo");
            //koko.Values.Add("usern", txtUserName.Text);
            //koko.Values.Add("passw", txtPassword.Text);
            //koko.Expires = DateTime.Now.AddDays(3);
            //Response.Cookies.Add(koko);

            lblmsg.Text = "Welcome " + tableName;
           //Response.Redirect("~/userHome.aspx");
        }
        else
            lblmsg.Text = "Incoorect Username and/or Password!!";

        conn.Close(); 
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
            width: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="#000066" Text="Sign in"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" ForeColor="#000066" Text="User name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" ForeColor="#000066" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" ForeColor="#000066" Text="Sign in as:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="signinas" runat="server" Width="166px">
                        <asp:ListItem>Guest</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server">Forget Password?</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#000066" Text="lblmsg"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
