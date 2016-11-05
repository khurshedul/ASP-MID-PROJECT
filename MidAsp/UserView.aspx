<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="MidAsp.UserView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        body {
    background-color: coral;
}

          .auto-style1 {
              width: 190px;
          }

          .auto-style6 {
              width: 417px;
              height: 5px;
          }
          .auto-style7 {
              height: 5px;
          }
          .auto-style10 {
              width: 328px;
              height: 5px;
          }
          .auto-style11 {
              width: 328px;
          }
          .auto-style12 {
              width: 417px;
          }

    </style>
     <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 283px; margin-left: 456px">
                    <li class="manulist" >
                   <asp:Button ID="Home" runat="server"  Text="Home" class="menulista" OnClick="Home_Click" />  
                    
                <asp:Button ID="search" runat="server"  Text="search" class="menulista" OnClick="search_Click"  />
                   
                <asp:Button ID="logout" runat="server"  Text="logout" class="menulista" OnClick="logout_Click" />
                
                    </li>

                </ul>
                   <table style="width:100%;">
                       <tr>
                           <td>&nbsp;</td>
                           <td class="auto-style1">
                               <asp:GridView ID="GridViewhome" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="dvdid" GridLines="Vertical" OnSelectedIndexChanged="GridViewhome_SelectedIndexChanged" OnSelectedIndexChanging="GridViewhome_SelectedIndexChanging">
                                   <AlternatingRowStyle BackColor="#DCDCDC" />
                                   <Columns>
                                       <asp:BoundField DataField="dvdid" HeaderText="Id" />
                                       <asp:BoundField DataField="title" HeaderText="Movie name" />
                                       <asp:BoundField DataField="description" HeaderText="Description" />
                                       <asp:BoundField DataField="Actor" HeaderText="Actor" />
                                       <asp:BoundField DataField="type" HeaderText="Type" />
                                       <asp:BoundField DataField="category" HeaderText="Category" />
                                       <asp:BoundField DataField="date" HeaderText="Release Date" />
                                       <asp:CommandField HeaderText="Order movie" ShowSelectButton="True" />
                                   </Columns>
                                   <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                   <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                   <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                   <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                   <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                   <SortedDescendingHeaderStyle BackColor="#000065" />
                               </asp:GridView>
                           </td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td class="auto-style1">&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td class="auto-style1">&nbsp;</td>
                           <td>&nbsp;</td>
                       </tr>
                   </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 690px; margin-left: 101px">
                    <li style="margin-left: 360px" >
                   <asp:Button ID="Button1" runat="server"  Text="Home" class="menulista" OnClick="Button1_Click1" />  
                    
                <asp:Button ID="Button2" runat="server"  Text="search" class="menulista" OnClick="Button2_Click"  />
                   
                <asp:Button ID="Button3" runat="server"  Text="logout" class="menulista" OnClick="Button3_Click" />
                
                    </li>
                    

              

                </ul>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style10"></td>
                                <td class="auto-style6">SEARCH by Title:
                                    <asp:TextBox ID="TextBoxsrc" runat="server" Height="39px" style="margin-top: 0px" Width="158px"></asp:TextBox>
                                    <asp:Button ID="searchbtn" runat="server" CssClass="menulista" Height="37px" Text="search" Width="103px" OnClick="searchbtn_Click" />
                                    <br />
                                    <br />
                                    Search By Actor:
                                    <asp:TextBox ID="TextBoxact" runat="server" Height="29px" Width="165px"></asp:TextBox>
                                    <asp:Button ID="Button4" runat="server" CssClass="menulista" OnClick="Button4_Click" Text="search" />
                                    <br />
                                    <br />
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style12">
                                    <asp:GridView ID="GridViewhome0" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="dvdid" GridLines="Vertical" Height="216px" OnSelectedIndexChanged="GridViewhome0_SelectedIndexChanged" OnSelectedIndexChanging="GridViewhome0_SelectedIndexChanging" style="margin-left: 0px" Width="468px">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:BoundField DataField="dvdid" HeaderText="Id" />
                                            <asp:BoundField DataField="title" HeaderText="Movie name" />
                                            <asp:BoundField DataField="description" HeaderText="Description" />
                                            <asp:BoundField DataField="Actor" HeaderText="Actor" />
                                            <asp:BoundField DataField="type" HeaderText="Type" />
                                            <asp:BoundField DataField="category" HeaderText="Category" />
                                            <asp:BoundField DataField="date" HeaderText="Release Date" />
                                            <asp:CommandField HeaderText="Order movie" ShowSelectButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
            </asp:View>
            
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
