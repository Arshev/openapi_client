# OpenapiClient::CreateGroupStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **Boolean** |  | [optional] 
**message** | **String** | Group creation status | [optional] 
**chat_id** | **String** | Created group id | [optional] 
**group_invite_link** | **String** | Link invitation to the group | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CreateGroupStatus.new(created: true,
                                 message: ok,
                                 chat_id: 1493046918@g.us-13216468942@c.us,
                                 group_invite_link: null)
```


