<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notes_home.aspx.cs" Inherits="Notes.notes_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notes Application</title>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=textarea] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: flex;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            display: inline-block;
            color: white;
            padding: 10px 20px;
            margin: 4px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        .auto-style1 {
            width: 100%;
            padding: 30px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            display: inline-block;
            color: white;
            padding: 10px 20px;
            margin: 2px 0;
            cursor: pointer;
            width: 118px;
        }

        .auto-style3 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            display: inline-block;
            color: white;
            padding: 10px 20px;
            margin: 2px 0;
            cursor: pointer;
            width: 118px;
        }

        .auto-style4 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            display: inline-block;
            color: white;
            padding: 8px 20px;
            margin: 2px 0;
            cursor: pointer;
            width: 118px;
        }



    </style>

</head>
<body style="background-color: aqua;">
    <form id="form1" runat="server" class="frmalg" style="background-color: white; margin:auto;">

        <div class="container">
            <center>
                <h3>Note Taking Application </h3>
            </center>
            <label for="uname"><b>Title:</b></label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TitleText" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please  Enter title</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox runat="server" ID="TitleText" placeholder="Enter Title for your note :)"></asp:TextBox>
            <label for="psw"><b>Note:<br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextArea" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red">Please  Enter description</asp:RequiredFieldValidator>
            </b></label>
            &nbsp;<textarea runat="server"  id="TextArea" style="resize:vertical" placeholder="Write your memorable notes or your daily work Here !!:)" cols="20" name="S1" rows="2" class="auto-style1"></textarea>
            &nbsp;<asp:Button runat="server" ID="save" CssClass="auto-style2" Text="Save" Width="122px" OnClick="Save_Click" margin="auto"/>
            &nbsp;<input id="Reset" type="reset" value="Reset" class="auto-style3"/>
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style4" NavigateUrl="~/note_view.aspx" Width="81px" Font-Size="Medium">My notes</asp:HyperLink>
            <%--<asp:Button runat="server" ID="reset" CssClass="auto-style2" Text="Reset" Width="143px" OnClick="Reset_Click" Enabled="False" />--%>
            &nbsp;<%--<asp:Button runat="server" ID="mynotes" Text="My notes" CssClass="auto-style2" Width="153px" OnClick="mynotes_Click" Enabled="False" />--%>

            <br />
            

        </div>
    </form>
</body>
</html>