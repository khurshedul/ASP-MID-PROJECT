<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MidAsp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 361px;
        }
        .auto-style3 {
            width: 64px;
        }
        .auto-style4 {
            width: 177px;
        }
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
    </style>
    <script src="Scripts/jquery-3.1.1.js"></script>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div>
    
        
            
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                                     <tr>
                                    <td class="auto-style2" >
                                        <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="318px" align="center" ></asp:Image>
                                    </td>
                                </tr>
                  
                        <td class="auto-style2">
                            <table cellpadding="0">

                                <tr>
                                    <td align="center" colspan="2">Log In</td>
                                </tr>
                               
                                <tr>
                                    <td align="right" class="auto-style3">
                                       
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style3">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Login1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                     <td class="auto-style3">
                                         &nbsp;</td>
                                    <td class="auto-style4" >
                                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Height="41px" Text="Log In" ValidationGroup="Login1" Width="86px" OnClick="LoginButton_Click" align="right" />
                                       
                                    </td>
                                   
                                </tr>
                                 
                                <tr>
                                    <td class="auto-style3">
                                        <br />
                                    </td>
                                     <td class="auto-style4">
                                         <asp:Label ID="Label1" runat="server" BackColor="Red"></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                
                                 
                            </table>
                        </td>
                    </tr>
                </table>
           
     
    
    </div>
    </form>
</center>
</body>
</html>
