<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notes_home.aspx.cs" Inherits="Notes.notes_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 62px;
        }
        .auto-style5 {
            width: 621px;
            height: 355px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style6 {
            height: 62px;
            width: 716px;
        }
        .auto-style7 {
            width: 716px;
            height: 383px;
        }
        .auto-style8 {
            width: 254px;
            height: 50px;
        }
        .auto-style9 {
            height: 50px;
            width: 716px;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            height: 383px;
        }
        .auto-style12 {
            height: 62px;
            width: 254px;
        }
        .auto-style13 {
            width: 254px;
            height: 383px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Label ID="lbl" runat="server" Text="Note Taking Application"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TitleText" runat="server" Height="40px" Width="464px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="notes" runat="server" Text="Note:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <textarea id="TextArea" runat="server" class="auto-style5" name="S1" value="" cols="20" rows="1"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="save" runat="server" OnClick="Save_Click" Text="Save" Height="33px" Width="70px" />
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="reset" runat="server" Text="Reset" OnClick="Reset_Click" Height="31px" Width="71px" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="mynotes" runat="server" Text="My Notes" OnClick="mynotes_Click" ValidateRequestMode="Disabled" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
