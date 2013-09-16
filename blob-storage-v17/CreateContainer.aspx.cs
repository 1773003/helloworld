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
    public partial class CreateContainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve storage account from connection string
                CloudStorageAccount storageAccount = CloudStorageAccount.Parse(CloudConfigurationManager.GetSetting("cloudString"));

                // Create the blob client 
                CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();

                // Retrieve a reference to a container 
                CloudBlobContainer container = blobClient.GetContainerReference(txtNameContainer.Text.ToLower());

                // Create the container if it doesn't already exist
                container.CreateIfNotExists();
                //makes public
                container.SetPermissions(new BlobContainerPermissions{PublicAccess =BlobContainerPublicAccessType.Blob});
            }
            catch (Exception ex)
            {
                lblResult.Text = ex.Message.ToString();
            }
            finally
            {
                lblResult.Text = "Container created";
            }
        }
    }
}