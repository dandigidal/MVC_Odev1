<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>About Me</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
            <tr>
                <td class="auto-style1" style="vertical-align: top">
                    
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MyPictures.aspx">My Pictures</asp:HyperLink>
                    <br />
                </td>
                <td>Who are we: {Ömer Faruk ERKUL,14300304522},{Yağız Ünsal, 99999999999} 
                    <br />
                    <br />
                    You can also see some of my pictures by visiting My Pictures page with button below<br />
                    <br />
                    <asp:Button ID="btnMyPictures" runat="server" OnClick="btnMyPictures_Click" Text="My Pictures" Style="margin-left:200px"/>
                    <br />
&nbsp;<br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </form>
    </body>
</html>
