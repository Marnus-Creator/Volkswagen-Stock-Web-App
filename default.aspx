<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Volkswagen_Stock_Web_App._default" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="myStyleSheet.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            font-weight: normal;
            color: #000066;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style6 {
            height: 1px;
        }
        .auto-style8 {
            width: 1396px;
        }
        .auto-style10 {
            width: 30px;
        }
        </style>
</head>
<body>
    <div class="auto-style4">
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div>
            <h1 class="auto-style1">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td><strong style="padding: inherit; margin: inherit; border: medium outset #000000; font-size: 100px; font-weight: bold; line-height: normal; text-align: center; background-color: #FFFFFF; text-transform: capitalize; ">Volkswagen Roodepoort</strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style6"></td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style6"></td>
                        <td class="auto-style6"></td>
                    </tr>
                </table>
            </h1>
        </div>
</body>
        <table class="auto-style3">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
    <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="36pt" OnClick="Button1_Click" Text="Show all stock" Width="1400px" CssClass="accordion" ForeColor="#000066" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
    <asp:Button ID="Button2" runat="server" BorderStyle="None" Font-Size="36pt" Text="Update Inventory" OnClick="Button2_Click" Width="1400px" CssClass="accordion" ForeColor="#000066" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
</html>

<div class="panel">
  //<p>Show all stock...</p>
</div>

<div class="panel">
 // <p>Update Inventory...</p>
</div>

    </div>
    </form>
<div class="panel">
 // <p>Model details...</p>
</div>
    </div>

