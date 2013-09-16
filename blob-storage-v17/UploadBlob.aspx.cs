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
    public partial class UploadBlob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
           FileUploadBlob.SaveAs(Server.MapPath("temp\\" + FileUploadBlob.FileName));
 // Retrieve storage account from connection string
            CloudStorageAccount storageAccount = CloudStorageAccount.Parse(CloudConfigurationManager.GetSetting("cloudString"));

            // Create the blob client
            CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();

            // Retrieve reference to a previously created container
           // CloudBlobContainer container = blobClient.GetContainerReference("myimages");
            CloudBlobContainer container = blobClient.GetContainerReference(txtContainerName.Text.ToLower().ToString());
            // Retrieve reference to a blob named "myblob"
            CloudBlockBlob blob = container.GetBlockBlobReference(FileUploadBlob.FileName.ToLower().ToString());
       //    CloudBlob blob = container.GetBlobReference("myblob");
          
            // Create or overwrite the "myblob" blob with contents from a local file
        //    using (var fileStream = System.IO.File.OpenRead(@"c:\1.jpg"))
   


            using (FileUploadBlob.PostedFile.InputStream)
            {
                blob.UploadFromStream(FileUploadBlob.PostedFile.InputStream);

            }
     
        }

      
    }
}