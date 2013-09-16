<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadBlob.aspx.cs" Inherits="blob_storage_v17.UploadBlob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        Enter Container name to upload to<br />
        <asp:TextBox ID="txtContainerName" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
    
        <asp:FileUpload ID="FileUploadBlob" runat="server" />
            <br />
        <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
    
            <br />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
