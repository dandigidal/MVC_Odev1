<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyPictures.aspx.cs" Inherits="MyPictures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My Pictures</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <br />
                <form runat="server">
                    <div class="form-group">
                        <asp:Label ID="lbl1" runat="server" Text="Select one of my pictures:"></asp:Label>
                        <asp:DropDownList ID="cmbImages" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="cmbImages_SelectedIndexChanged">
                            <asp:ListItem Text="Select a picture" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Antalya" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Aspendos" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Bursa" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Mardin" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Muttalip" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Panel ID="pnl1" runat="server" CssClass="input-group" Visible="False">
                            <hr />
                            <asp:CheckBox ID="chk1" runat="server" Text="Add a border to the picture" AutoPostBack="true" OnCheckedChanged="chk1_CheckedChanged" />
                        </asp:Panel>
                        <asp:Panel ID="pnl2" runat="server" Visible="False" CssClass="input-group">
                            <hr />
                            <asp:Label ID="lbl2" runat="server" Text="Select a border color:"></asp:Label>
                            <asp:RadioButtonList ID="rbList" runat="server" CssClass="input-group" AutoPostBack="true" OnSelectedIndexChanged="rbList_SelectedIndexChanged">
                                <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                                <asp:ListItem Text="Brown" Value="Brown"></asp:ListItem>
                                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
                                <asp:ListItem Text="Aqua" Value="Aqua" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <asp:Label ID="lbl3" runat="server" Text="Select the size of the border:"></asp:Label>
                            <asp:DropDownList ID="cmbWidth" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="cmbWidth_SelectedIndexChanged">
                                <asp:ListItem Text="1 pixel" Value="1" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="2 pixels" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3 pixels" Value="3"></asp:ListItem>
                                <asp:ListItem Text="4 pixels" Value="4"></asp:ListItem>
                                <asp:ListItem Text="5 pixels" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                            <hr />
                        </asp:Panel>
                    </div>
                </form>
            </div>
            <div class="col-sm-8">
                <div class="row">
                    <div class="center-block">
                        <br />
                        <asp:Image ID="img" runat="server" Height="480px" Width="640px" ImageAlign="Baseline" ValidateRequestMode="Inherit" />
                        <br />
                        <asp:Label ID="lblImage" runat="server" CssClass="text-center"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
