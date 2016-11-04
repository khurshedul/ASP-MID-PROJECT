<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="MidAsp.UserView" %>

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
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
            </asp:View>
            <asp:View ID="View2" runat="server">
            </asp:View>
            <asp:View ID="View3" runat="server">
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
