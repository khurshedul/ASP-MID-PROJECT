<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="MidAsp.AdminView" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
        .auto-style4 {
            width: 364px;
        }
        .auto-style5 {
            width: 364px;
            height: 6px;
        }
        .auto-style6 {
            height: 6px;
        }
        .auto-style7 {
            width: 364px;
            height: 197px;
        }
        .auto-style8 {
            height: 197px;
        }
        .auto-style9 {
            width: 389px;
        }
        .auto-style10 {
            width: 488px;
        }
        .auto-style11 {
            width: 390px;
            height: 215px;
        }
        .auto-style12 {
            width: 325px;
            height: 215px;
        }
        .auto-style13 {
            width: 429px;
            height: 215px;
        }
        .auto-style14 {
            width: 402px;
        }
        .auto-style15 {
            width: 442px;
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
                    <asp:Label ID="message" runat="server" EnableViewState="False"></asp:Label>
                    <br />
                    <center>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;
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
                            <td class="auto-style12">
                                <asp:GridView ID="type" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="type_RowCancelingEdit" OnRowDeleting="type_RowDeleting" OnRowEditing="type_RowEditing" OnRowUpdating="type_RowUpdating" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="ID" />
                                        <asp:BoundField DataField="typemv" HeaderText="Type" />
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
                            <td class="auto-style13">
                                <asp:GridView ID="category" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="category_RowCancelingEdit" OnRowDeleting="category_RowDeleting" OnRowEditing="category_RowEditing" OnRowUpdating="category_RowUpdating1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="ID" />
                                        <asp:BoundField DataField="categorymv" HeaderText="category" />
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
                            <td class="auto-style1"></td>
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
                         &nbsp;<table aria-multiline="False" style="width: 100%; height: 114px;">
                             <tr>
                                 <td class="auto-style9"></td>
                                 <td class="auto-style10">ID:<asp:TextBox ID="IDdvdi" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Empty field" ControlToValidate="IDdvdi" Display="Dynamic" ValidationGroup="dvdadd">*</asp:RequiredFieldValidator>
                                 </td>
                                 <td></td>
                             </tr>
                             <tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">Title:<asp:TextBox ID="Titledvd" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Empty field" ControlToValidate="Titledvd" Display="Dynamic" ValidationGroup="dvdadd">*</asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">Description:<asp:TextBox ID="Description" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Empty field" ControlToValidate="Description" Display="Dynamic" ValidationGroup="dvdadd">*</asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">Casting:<asp:DropDownList ID="DropDownListcast" runat="server">
                                     </asp:DropDownList>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr><tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">Type:<asp:DropDownList ID="DropDownListtype" runat="server">
                                     </asp:DropDownList>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr><tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">Category:<asp:DropDownList ID="DropDownListcat" runat="server">
                                     </asp:DropDownList>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr><tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">Date of release: <asp:TextBox ID="datedvdrel" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Empty field" ControlToValidate="datedvdrel" Display="Dynamic" ValidationGroup="dvdadd">*</asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="CalendarExtender2" runat="server"
            TargetControlID="datedvdrel" PopupButtonID="dob" Format="yyyy-MM-dd" /></td>
                                 <td>&nbsp;</td>
                             </tr><tr>
                                 <td class="auto-style9">&nbsp;</td>
                                 <td class="auto-style10">
                                     <asp:Button ID="addDvd" runat="server" Text="Add" ValidationGroup="dvdadd" OnClick="addDvd_Click" />
                                     <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="dvdadd" runat="server" />
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                         </table>


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
                
                        <table style="width: 100%; height: 472px;">
            <tr>
                <td class="auto-style5">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"> ID:
                    <asp:TextBox ID="catID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="catID" Display="Dynamic" ErrorMessage="Empty field" ValidationGroup="cat">*</asp:RequiredFieldValidator>
                    <br />
                    Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="categorytxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="categorytxt" Display="Dynamic" ErrorMessage="Empty Field" ValidationGroup="cat">*</asp:RequiredFieldValidator>
                    <br />
                   
                   
                    <br />
                    <asp:Button ID="Add" runat="server" BackColor="#FF66FF" Text="Add" OnClick="Add_Click" ValidationGroup="cat" />
                   
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="cat" />
                   
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
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
                   <table style="width: 100%; height: 472px;">
            <tr>
                <td class="auto-style5">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"> Type ID:
                    <asp:TextBox ID="typeid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="typeid" Display="Dynamic" ErrorMessage="Empty field" ValidationGroup="type">*</asp:RequiredFieldValidator>
                    <br />
                    type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="typetxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="typetxt" Display="Dynamic" ErrorMessage="Empty field" ValidationGroup="type">*</asp:RequiredFieldValidator>
                    <br />
                   
                   
                    <br />
                    <asp:Button ID="Button43" runat="server" BackColor="#FF66FF" Text="Add" OnClick="Button43_Click" ValidationGroup="type" />
                   
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary3" runat="server" ValidationGroup="type" />
                   
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
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
                                 <table style="width: 100%; height: 472px;">
            <tr>
                <td class="auto-style5">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"> casting ID:
                    <asp:TextBox ID="castid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="castid" Display="Dynamic" ErrorMessage="Empty field" ValidationGroup="cast">*</asp:RequiredFieldValidator>
                    <br />
                    actor:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="casttxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="casttxt" Display="Dynamic" ErrorMessage="Empty field" ValidationGroup="cast">*</asp:RequiredFieldValidator>
                    <br />
                   
                   
                    <br />
                    <asp:Button ID="castingbtn" runat="server" BackColor="#FF66FF" Text="Add" OnClick="castingbtn_Click" ValidationGroup="cast"  />
                   
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary4" runat="server" ValidationGroup="cast" />
                   
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
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
                            <table style="width:100%;">
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style15">Total Dvd Requests:<asp:Label ID="mvreq" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style15">
                                <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="437px">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
