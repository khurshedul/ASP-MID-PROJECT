<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MidAsp.Resgitration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
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
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <br />
                    <asp:Label ID="message" runat="server"></asp:Label>
                    <br />
                    <br />
                    User Name:
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Empty field" ControlToValidate="username" Display="Dynamic" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                    <br />
                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Empty field" ControlToValidate="Email" Display="Dynamic" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ValidationGroup="reg" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <br />
                    Password:&nbsp;&nbsp;
                    <asp:TextBox ID="password1" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Empty field" ControlToValidate="password1" Display="Dynamic" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                 <br />
                    phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="phone" runat="server" TextMode="Phone"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Empty field" ControlToValidate="phone" Display="Dynamic" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone no" ValidationExpression="^(?:\+?88)?01[15-9]\d{8}$" ControlToValidate="phone" Display="Dynamic" ValidationGroup="reg">*</asp:RegularExpressionValidator>
                    <br />
                    DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="dob" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Empty field" ControlToValidate="dob" Display="Dynamic" ValidationGroup="reg">*</asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="CalendarExtender2" runat="server"
            TargetControlID="dob" PopupButtonID="dob" Format="yyyy-MM-dd" />
        
<br />
                    <asp:HiddenField ID="user" runat="server" Value="user" />
                    <br />
                    <asp:Button ID="register" runat="server" BackColor="#FF66FF" Text="Register" OnClick="register_Click" ValidationGroup="reg" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="reg" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
