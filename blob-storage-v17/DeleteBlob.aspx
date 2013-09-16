<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBlob.aspx.cs" Inherits="blob_storage_v17.DeleteBlob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        Current containers:<br />
        asset-54f23d35-b96c-4945-9ae1-00d1d2c143e5<br />
        asset-c4901c7b-909e-4d84-a727-4ee485d0f78c<br />
        blob1773003<br />
        container1<br />
        myimages<br />
        myimagescontainer<br />
        <br />
        <br />
        <br />
        Enter Container name<asp:TextBox ID="txtContainerName" runat="server"></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <br />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </p>
        <p>
            copy and paste blob to delete into text box:</p>
        <p>
            <asp:TextBox ID="txtDelete" runat="server" Width="572px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click1" Text="Delete" />
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
