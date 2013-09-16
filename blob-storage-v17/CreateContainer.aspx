<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateContainer.aspx.cs" Inherits="blob_storage_v17.CreateContainer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Enter container name:
        <asp:TextBox ID="txtNameContainer" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCreate" runat="server" Text="Create Container" OnClick="btnCreate_Click" />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
