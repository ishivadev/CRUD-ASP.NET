<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
         <div style="font-size:x-large" align="center">Student Information Manage Form</div>
         <table class="nav-justified">
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">Student ID</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">Student Name</td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">Address</td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="147px">
                         <asp:ListItem>India</asp:ListItem>
                         <asp:ListItem>USA</asp:ListItem>
                         <asp:ListItem>Bangladesh</asp:ListItem>
                         <asp:ListItem>Japan</asp:ListItem>
                         <asp:ListItem>Russia</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">Age</td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="height: 24px; width: 119px"></td>
                 <td style="height: 24px; width: 150px">Contact</td>
                 <td style="height: 24px">
                     <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">&nbsp;</td>
                 <td>
                     <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" BorderColor="#3333CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="76px" />
&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#CC00FF" BorderColor="#3333CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" />
&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#CC00FF" BorderColor="#3333CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm(Are you sure want to Delete the data..??);" Text="Delete" />
&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#CC00FF" BorderColor="#3333CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Search" />
                 </td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 119px">&nbsp;</td>
                 <td style="width: 150px">&nbsp;</td>
                 <td>
                     <asp:GridView ID="GridView1" runat="server" Width="499px">
                     </asp:GridView>
                 </td>
             </tr>
         </table>
        <br />

    </div>
</asp:Content>
