<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Volkswagen_Stock_Web_App.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="StockPagesCSS.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: 100px;
            text-transform: capitalize;
            color: #000066;
        }
        .auto-style3 {
            width: 591px;
        }
        .auto-style4 {
            width: 250px;
            height: 110px;
        }
        .auto-style5 {
            width: 100%;
            height: 133px;
        }
        .auto-style6 {
            font-size: xx-large;
            color: #000066;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            height: 41px;
        }
        .auto-style8 {
            width: 261px;
        }
        .auto-style9 {
            height: 41px;
            width: 261px;
        }
        .auto-style10 {
            width: 1048px;
        }
        .auto-style11 {
            height: 41px;
            width: 1048px;
        }
        .auto-style12 {
            font-size: medium;
            color: #000066;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            font-size: xx-large;
            color: #FF0000;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            width: 591px;
            height: 48px;
        }
        .auto-style15 {
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style3"><span style="padding: inherit; margin: inherit; border: medium outset #000000; line-height: normal; text-align: center; background-color: #FFFFFF; " class="auto-style2">Update Stock</span></td>
                        <td><a href="default.aspx">
                            <img alt="" border="5" class="auto-style4" src="Logo/upload-vw.jpg" /></a></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="lblEmptyCart" runat="server" BorderColor="Red" BorderStyle="Solid" CssClass="auto-style13"></asp:Label>
                        </td>
                        <td class="auto-style15"></td>
                        <td class="auto-style15"></td>
                    </tr>
                </table>
            </h1>
        </div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Label ID="lblAdd" runat="server" BorderStyle="Solid" CssClass="auto-style6" Text="Add new stock:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style6" Text="Model: "></asp:Label>
&nbsp;<asp:TextBox ID="tbxModel" runat="server" Font-Size="X-Large" Height="25px" Width="200px"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style6" Text="Body Type"></asp:Label>
&nbsp;<asp:TextBox ID="tbxBType" runat="server" Font-Size="X-Large" Height="25px" Width="200px"></asp:TextBox>
&nbsp;<asp:Label ID="Label3" runat="server" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style6" Text="Price (R)"></asp:Label>
&nbsp;<asp:TextBox ID="tbxPrice" runat="server" Font-Size="X-Large" Height="25px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" BorderStyle="Solid" CssClass="auto-style12" OnClick="btnAdd_Click" Text="Add" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Label ID="lblRemove" runat="server" BorderStyle="Solid" CssClass="auto-style6" Text="Delete Sold Stock: "></asp:Label>
                    </strong></td>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style6" Text="Delete Vehicle with ID: "></asp:Label>
&nbsp;
                    <asp:TextBox ID="tbxDelete" runat="server" Height="25px"></asp:TextBox>
&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnDelete" runat="server" BorderStyle="Solid" CssClass="auto-style12" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Label ID="lblUpdate" runat="server" BorderStyle="Solid" CssClass="auto-style6" Text="Update All Stock: "></asp:Label>
                    </strong></td>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" BorderStyle="Solid" CssClass="auto-style12" OnClick="btnUpdate_Click" Text="Update" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="394px" Width="633px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
