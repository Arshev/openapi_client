# OpenapiClient::InstanceStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_status** | **String** | Instance Status | [optional] 
**qr_code** | **String** | Base64-encoded contents of the QR code | [optional] 
**status_data** | [**InstanceStatusStatusData**](InstanceStatusStatusData.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InstanceStatus.new(account_status: got qr code,
                                 qr_code: null,
                                 status_data: null)
```


