<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllStock.aspx.cs" Inherits="Volkswagen_Stock_Web_App.ShowAllStock" %>

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
            width: 685px;
        }
        .auto-style4 {
            width: 250px;
            height: 110px;
        }
        .auto-style5 {
            width: 100%;
            height: 443px;
        }
        .auto-style12 {
            height: 391px;
        }
        .auto-style16 {
            height: 47px;
            width: 769px;
        }
        .auto-style17 {
            height: 391px;
            width: 769px;
        }
        .auto-style18 {
            width: 769px;
        }
        .auto-style19 {
            height: 47px;
        }
        .auto-style20 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style21 {
            color: #000066;
            margin-right: 0px;
        }
        .auto-style22 {
            height: 47px;
            width: 1800px;
        }
        .auto-style23 {
            height: 391px;
            width: 1800px;
        }
        .auto-style24 {
            width: 1800px;
        }
        .auto-style25 {
            color: #000066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                <table class="auto-style20">
                    <tr>
                        <td class="auto-style3"><span style="padding: inherit; margin: inherit; border: medium outset #000000; line-height: normal; text-align: center; background-color: #FFFFFF; " class="auto-style2">Available Stock</span></td>
                        <td><a href="default.aspx">
                            <img alt="" border="5" class="auto-style4" src="Logo/upload-vw.jpg" /></a></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td>&nbsp;</td>
                        <td></td>
                    </tr>
                </table>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style22">
                            <asp:Button ID="btnDispStock" runat="server" BorderStyle="Solid" BorderWidth="5px" CssClass="auto-style21" Font-Size="36pt" Height="69px" OnClick="btnDispStock_Click" Text="Display/Update Stock" Width="470px" />
                            <br />
                            <asp:Label ID="lblNumCars" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Size="40pt" ForeColor="#000066"></asp:Label>
                            <br />
                            <asp:Label ID="lblDisplayOptions" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Size="25pt" ForeColor="#000066">Display options:</asp:Label>
&nbsp;<asp:Button ID="Button1" runat="server" BorderColor="#000066" BorderStyle="Solid" CssClass="auto-style25" Font-Bold="True" Font-Size="13pt" OnClick="Button1_Click" Text="Hatch" />
&nbsp;<asp:Button ID="Button2" runat="server" BorderColor="#000066" BorderStyle="Solid" CssClass="auto-style25" Font-Bold="True" Font-Size="13pt" OnClick="Button2_Click" Text="Sedan" />
&nbsp;<asp:Button ID="Button3" runat="server" BorderColor="#000066" BorderStyle="Solid" CssClass="auto-style25" Font-Bold="True" Font-Size="13pt" OnClick="Button3_Click" Text="SUV" />
&nbsp;<asp:Button ID="Button4" runat="server" BorderColor="#000066" BorderStyle="Solid" CssClass="auto-style25" Font-Bold="True" Font-Size="13pt" OnClick="Button4_Click" Text="Bakkie" />
&nbsp;<asp:Button ID="Button5" runat="server" BorderColor="#000066" BorderStyle="Solid" CssClass="auto-style25" Font-Bold="True" Font-Size="13pt" OnClick="Button5_Click" Text="Commercial" />
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style19"></td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" Font-Bold="False" Font-Size="XX-Large" ForeColor="#000066" Height="424px" Width="766px">
                            </asp:GridView>
                        </td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </h1>
        </div>
    </form>
</body>
</html>
