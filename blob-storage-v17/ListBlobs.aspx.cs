using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blob_storage_v17
{
    public partial class ListBlobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                lblResult.Text = "";
                // Retrieve storage account from connection string
                CloudStorageAccount storageAccount = CloudStorageAccount.Parse(CloudConfigurationManager.GetSetting("cloudString"));

                // Create the blob client
                CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();

                // Retrieve reference to a previously created container
                CloudBlobContainer container = blobClient.GetContainerReference(txtContainerName.Text.ToLower().ToString());

                // Loop over blobs within the container and output the URI to each of them
                foreach (var blobItem in container.ListBlobs())
                {
                    lblResult.Text += blobItem.Uri.ToString() + "\n";
                    // Console.WriteLine(blobItem.Uri);
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = ex.Message.ToString();
            }
        }
    }
}