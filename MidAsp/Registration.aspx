<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MidAsp.Resgitration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        .auto-style1 {
            width: 390px;
        }
        .auto-style2 {
            width: 325px;
        }
        .auto-style3 {
            width: 429px;
        }
        body {
    background-color: coral;
}
    </style>
</head>
<body style="height: 551px">
    <form id="form1" runat="server">
        <table style="width: 100%; height: 472px;">
            <tr>
                <td>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/dvd.png" Width="664px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>User Name:
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    <br />
                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    <br />
                    Password:&nbsp;&nbsp;
                    <input id="Password1" type="password" runat="server" /><br />
                    phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                    <br />
                    DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="dob" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:CalendarExtender ID="CalendarExtender2" runat="server"
            TargetControlID="dob" PopupButtonID="dob" Format="yyyy-MM-dd" />
        
<br />
                    <asp:HiddenField ID="user" runat="server" Value="user" />
                    <br />
                    <asp:Button ID="register" runat="server" BackColor="#FF66FF" Text="Register" OnClick="register_Click" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
