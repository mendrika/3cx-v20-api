# 3cx-v20-api
extracting 3cx v20 information from API


All the information inside the script has been retrieved by enabling developper mode and then analyzing requests.
This script extracts SystemStatus but can be used to extract anything from xapi/v1/ (just append xapi/v1/ to your 3cx URL to get full list of what you can retrieve with the API)

Another example is /xapi/v1/ActiveCalls which returns all active calls (internal , inbound , outbound, ...) the possibilities are limitless 

update : 
- Does not work if the extension used with the script has MFA enabled
- you can use the REST API to achieve the same result, but it is only available with Entreprise licence. 

# example of use :

<pre> ./v20-api.sh https://mycompany.my3cx.fr 500 str0nGp@@@sw0rD foo </pre>

# example of output:
<pre>
{
  "@odata.context": "https://XXXXXXX/xapi/v1/metadata#SystemStatus",
  "FQDN": "XXXXXXX.my3cx.fr",
  "Version": "20.0.7.1080",
  "Activated": true,
  "MaxSimCalls": 16,
  "ExtensionsRegistered": 31,
  "Ip": "XXXXXXXXX Static",
  "IpV4": "XXXXXXXX",
  "IpV6": "",
  "LocalIpValid": true,
  "CurrentLocalIp": "XXXXXX",
  "AvailableLocalIps": "XXXXXXX",
  "ExtensionsTotal": 45,
  "HasUnregisteredSystemExtensions": false,
  "HasNotRunningServices": false,
  "TrunksRegistered": 5,
  "TrunksTotal": 7,
  "CallsActive": 0,
  "DiskUsage": 85,
  "FreeDiskSpace": 18176032768,
  "TotalDiskSpace": 122100412416,
  "MaintenanceExpiresAt": "2035-01-01T00:00:00Z",
  "Support": true,
  "LicenseActive": true,
  "ExpirationDate": "2035-01-01T00:00:00Z",
  "OutboundRules": 8,
  "BackupScheduled": true,
  "LastBackupDateTime": "2025-12-09T00:08:32.7261699+01:00",
  "ResellerName": "XXXXXXX",
  "LicenseKey": "XXXXXX",
  "ProductCode": "XXXXXXX",
  "IsAuditLogEnabled": true,
  "IsChatLogEnabled": true,
  "RecordingUsedSpace": 88438002954,
  "RecordingQuota": 96636764160,
  "RecordingStopped": false,
  "VoicemailStopped": false,
  "VoicemailQuotaReached": false,
  "DBMaintenanceInProgress": false,
  "RecordingQuotaReached": false,
  "IsRecordingArchiveEnabled": false,
  "OS": "Linux",
  "AutoUpdateEnabled": true,
  "LastCheckForUpdates": "2025-12-04T15:05:57.9317377+01:00",
  "LastSuccessfulUpdate": "2025-11-15T05:02:52.6205308+01:00",
  "RemoteStorageEnabled": false,
  "RemoteStorageStatus": "NotConfigured",
  "RemoteConfigurationRequired": false,
  "ChatUsedSpace": 16168602,
  "LogUsedSpace": 90558478
}
</pre>
