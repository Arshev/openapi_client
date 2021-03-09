# OpenapiClient::InstanceStatusStatusData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**substatus** | **String** | Instance Substatus | [optional] 
**title** | **String** | Status title in the language of the instance | [optional] 
**msg** | **String** | Status message in the language of the instance | [optional] 
**submsg** | **String** | Additional status message in the language of the instance | [optional] 
**actions** | [**InstanceStatusStatusDataActions**](InstanceStatusStatusDataActions.md) |  | [optional] 
**reason** | **String** | The reason why the instance is in \&quot;loading\&quot; status | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InstanceStatusStatusData.new(substatus: normal,
                                 title: Keep your phone connected,
                                 msg: WhatsApp connects to your phone to sync messages. To reduce data usage, connect your phone to Wi-Fi.,
                                 submsg: Retrying...,
                                 actions: null,
                                 reason: connecting)
```


