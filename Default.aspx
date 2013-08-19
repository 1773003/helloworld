<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Simply adding two numbers!<br />
            <br />
            <asp:TextBox ID="txtNo1" runat="server"></asp:TextBox>
            <br />
            +<br />
            <asp:TextBox ID="txtNo2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnEquals" runat="server" onclick="btnEquals_Click" Text="=" />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
            <br />
            <br />
            WOW!
        
        </div>
    </form>
</body>
</html>
