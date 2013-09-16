<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="blob_storage_v17.Azure" generation="1" functional="0" release="0" Id="000244bc-60c3-4eb7-85a0-4cec3b28c603" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="blob_storage_v17.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="blob-storage-v17:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/LB:blob-storage-v17:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="blob-storage-v17:cloudString" defaultValue="">
          <maps>
            <mapMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/Mapblob-storage-v17:cloudString" />
          </maps>
        </aCS>
        <aCS name="blob-storage-v17:devString" defaultValue="">
          <maps>
            <mapMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/Mapblob-storage-v17:devString" />
          </maps>
        </aCS>
        <aCS name="blob-storage-v17:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/Mapblob-storage-v17:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="blob-storage-v17Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/Mapblob-storage-v17Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:blob-storage-v17:Endpoint1">
          <toPorts>
            <inPortMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="Mapblob-storage-v17:cloudString" kind="Identity">
          <setting>
            <aCSMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17/cloudString" />
          </setting>
        </map>
        <map name="Mapblob-storage-v17:devString" kind="Identity">
          <setting>
            <aCSMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17/devString" />
          </setting>
        </map>
        <map name="Mapblob-storage-v17:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="Mapblob-storage-v17Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="blob-storage-v17" generation="1" functional="0" release="0" software="C:\Users\Laptop\documents\visual studio 2012\Projects\blob-storage-v17\blob-storage-v17.Azure\csx\Debug\roles\blob-storage-v17" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="cloudString" defaultValue="" />
              <aCS name="devString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;blob-storage-v17&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;blob-storage-v17&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17Instances" />
            <sCSPolicyUpdateDomainMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="blob-storage-v17UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="blob-storage-v17FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="blob-storage-v17Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="51ddcfe8-e375-4588-af2e-40a352d4a4d1" ref="Microsoft.RedDog.Contract\ServiceContract\blob_storage_v17.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="e7d830f2-de87-4141-baea-509db1bf61b8" ref="Microsoft.RedDog.Contract\Interface\blob-storage-v17:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/blob_storage_v17.Azure/blob_storage_v17.AzureGroup/blob-storage-v17:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>