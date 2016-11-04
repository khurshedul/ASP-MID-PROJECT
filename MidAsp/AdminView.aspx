<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="MidAsp.AdminView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <link rel="stylesheet" href="StyleSheet1.css" />
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 1070px; margin-left: 85px">
                    <li class="manulist" >
                 <asp:Button ID="Button37" runat="server"  Text="Home" class="menulista" OnClick="Button37_Click" />  
                <asp:Button ID="Button2" runat="server"  Text="Add Dvd" class="menulista" OnClick="Button2_Click"/>
                    
                <asp:Button ID="Button3" runat="server"  Text="Add Category" class="menulista" OnClick="Button3_Click"/>
                    
                <asp:Button ID="Button4" runat="server"  Text="Add Type" class="menulista" OnClick="Button4_Click"/>
                   
                <asp:Button ID="Button5" runat="server"  Text="Add Actor" class="menulista" Width="127px" OnClick="Button5_Click"/>
                
                 <asp:Button ID="Button26" runat="server"  Text="Report(total requests)" class="menulista" OnClick="Button26_Click" />       
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" class="menulista"/>
                    </li>

                    <li class="manulist"></li>

                </ul>
                <center>
                    <br />
                    <center>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1">
                                <asp:GridView ID="casting" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="casting_RowCancelingEdit" OnRowDeleting="casting_RowDeleting" OnRowEditing="casting_RowEditing" OnRowUpdating="casting_RowUpdating" OnSelectedIndexChanged="casting_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="ID" />
                                        <asp:BoundField DataField="actor" HeaderText="Actor" />
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                </asp:GridView>
                            </td>
                            <td class="auto-style2">
                                <asp:GridView ID="type" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="type_RowCancelingEdit" OnRowDeleting="type_RowDeleting" OnRowEditing="type_RowEditing" OnRowUpdating="type_RowUpdating" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="ID" />
                                        <asp:BoundField DataField="type" HeaderText="Type" />
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                </asp:GridView>
                            </td>
                            <td class="auto-style3">
                                <asp:GridView ID="category" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="category_RowCancelingEdit" OnRowDeleting="category_RowDeleting" OnRowEditing="category_RowEditing" OnRowUpdating="category_RowUpdating1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="ID" />
                                        <asp:BoundField DataField="category" HeaderText="category" />
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                    </table>
                    </center>
                    <br />
                <asp:GridView ID="dvd" runat="server" Width="808px" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="dvdid" OnRowEditing="dvd_RowEditing" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="dvdid" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="title" HeaderText="Details" />
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="castingId" HeaderText="Casting Id" />
                        <asp:BoundField DataField="typeid" HeaderText="Type Id" />
                        <asp:BoundField DataField="categoryid" HeaderText="Category Id" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    <br />
                    <br />
                    </center>
            </asp:View>
            <asp:View ID="View2" runat="server">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 1070px; margin-left: 85px">
                    <li class="manulist" >
                   <asp:Button ID="Button38" runat="server"  Text="Home" class="menulista" OnClick="Button38_Click" />  
                <asp:Button ID="Button6" runat="server"  Text="Add Dvd" class="menulista" OnClick="Button6_Click"/>
                    
                <asp:Button ID="Button7" runat="server"  Text="Add Category" class="menulista" OnClick="Button7_Click"/>
                    
                <asp:Button ID="Button8" runat="server"  Text="Add Type" class="menulista" OnClick="Button8_Click"/>
                   
                <asp:Button ID="Button9" runat="server"  Text="Add Actor" class="menulista" Width="127px" OnClick="Button9_Click"/>
                
                <asp:Button ID="Button27" runat="server"  Text="Report(total requests)" class="menulista" OnClick="Button27_Click" />         
                <asp:Button ID="Button10" runat="server" OnClick="Button1_Click" Text="logout" class="menulista"/>
                    </li>

                    <li class="manulist"></li>

                    

                </ul>
            </asp:View>
            <asp:View ID="View3" runat="server">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 1070px; margin-left: 85px">
                    <li class="manulist" >
                   <asp:Button ID="Button39" runat="server"  Text="Home" class="menulista" OnClick="Button39_Click" />  
                <asp:Button ID="Button11" runat="server"  Text="Add Dvd" class="menulista" OnClick="Button11_Click"/>
                    
                <asp:Button ID="Button12" runat="server"  Text="Add Category" class="menulista" OnClick="Button12_Click"/>
                    
                <asp:Button ID="Button13" runat="server"  Text="Add Type" class="menulista" OnClick="Button13_Click"/>
                   
                <asp:Button ID="Button14" runat="server"  Text="Add Actor" class="menulista" Width="127px" OnClick="Button14_Click"/>
                
                   <asp:Button ID="Button28" runat="server"  Text="Report(total requests)" class="menulista" OnClick="Button28_Click" />      
                <asp:Button ID="Button15" runat="server" OnClick="Button1_Click" Text="logout" class="menulista"/>
                    </li>

                    <li class="manulist"></li>

                </ul>
            </asp:View>
            <asp:View ID="View4" runat="server">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 1070px; margin-left: 85px">
                    <li class="manulist" >
                   <asp:Button ID="Button40" runat="server"  Text="Home" class="menulista" OnClick="Button40_Click" />  
                <asp:Button ID="Button16" runat="server"  Text="Add Dvd" class="menulista" OnClick="Button16_Click"/>
                    
                <asp:Button ID="Button17" runat="server"  Text="Add Category" class="menulista" OnClick="Button17_Click"/>
                    
                <asp:Button ID="Button18" runat="server"  Text="Add Type" class="menulista" OnClick="Button18_Click"/>
                   
                <asp:Button ID="Button19" runat="server"  Text="Add Actor" class="menulista" Width="127px" OnClick="Button19_Click"/>
                
                        <asp:Button ID="Button29" runat="server"  Text="Report(total requests)" class="menulista" OnClick="Button29_Click" /> 
                <asp:Button ID="Button20" runat="server" OnClick="Button1_Click" Text="logout" class="menulista"/>
                    </li>

                    <li class="manulist"></li>

                </ul>
            </asp:View>
            <asp:View ID="View5" runat="server">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 1070px; margin-left: 85px">
                    <li class="manulist" >
                   <asp:Button ID="Button41" runat="server"  Text="Home" class="menulista" OnClick="Button41_Click" />  
                <asp:Button ID="Button21" runat="server"  Text="Add Dvd" class="menulista" OnClick="Button21_Click"/>
                    
                <asp:Button ID="Button22" runat="server"  Text="Add Category" class="menulista" OnClick="Button22_Click"/>
                    
                <asp:Button ID="Button23" runat="server"  Text="Add Type" class="menulista" OnClick="Button23_Click"/>
                   
                <asp:Button ID="Button24" runat="server"  Text="Add Actor" class="menulista" Width="127px" OnClick="Button24_Click"/>
                
                   <asp:Button ID="Button30" runat="server"  Text="Report(total requests)" class="menulista" OnClick="Button30_Click" />      
                <asp:Button ID="Button25" runat="server" OnClick="Button1_Click" Text="logout" class="menulista"/>
                    </li>

                    <li class="manulist"></li>

                </ul>
            </asp:View>
                  <asp:View ID="View6" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image runat="server" ImageUrl="~/images/dvd.png" Height="200px" Width="415px" align="center" style="margin-left: 0px" ></asp:Image>
                <ul align="center" style="height: 37px; width: 1070px; margin-left: 85px">
                    <li class="manulist" >
                   <asp:Button ID="Button42" runat="server"  Text="Home" class="menulista" OnClick="Button42_Click" />  
                <asp:Button ID="Button31" runat="server"  Text="Add Dvd" class="menulista" OnClick="Button31_Click" />
                    
                <asp:Button ID="Button32" runat="server"  Text="Add Category" class="menulista" OnClick="Button32_Click" />
                    
                <asp:Button ID="Button33" runat="server"  Text="Add Type" class="menulista" OnClick="Button33_Click" />
                   
                <asp:Button ID="Button34" runat="server"  Text="Add Actor" class="menulista" Width="127px" OnClick="Button34_Click" />
                
                 <asp:Button ID="Button35" runat="server"  Text="Report(total requests)" class="menulista" OnClick="Button35_Click"  />       
                <asp:Button ID="Button36" runat="server" OnClick="Button1_Click" Text="logout" class="menulista"/>
                    </li>

                    <li class="manulist"></li>

                </ul>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
