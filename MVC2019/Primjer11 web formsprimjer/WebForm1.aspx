<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pozfravnaporuka.aspx.cs" Inherits="Primjer11_web_formsprimjer.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            moj rad <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Button" /><br />
            <asp:Label ID="Labelrezultat" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
