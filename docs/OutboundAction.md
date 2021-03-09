# OpenapiClient::OutboundAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | action id in queue | [optional] 
**type** | **String** | type of the action in queue | [optional] 
**last_try** | **Integer** | Last try time to execute a action | [optional] 
**json_data** | [**Object**](.md) | Additional action data | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OutboundAction.new(id: 1,
                                 type: chat,
                                 last_try: 1528320463,
                                 json_data: {})
```


