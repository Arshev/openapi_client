# OpenapiClient::GroupParticipantStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add** | **Boolean** |  | [optional] 
**message** | **String** | Status of adding participant to group | [optional] 
**group_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::GroupParticipantStatus.new(add: true,
                                 message: Added to 1493046918@g.us,
                                 group_id: 1493046918@g.us-13216468942@c.us)
```


