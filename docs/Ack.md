# OpenapiClient::Ack

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | unique id | [optional] 
**queue_number** | **Integer** | message id in queue | [optional] 
**chat_id** | **String** | chat ID | [optional] 
**status** | **String** | type of the message status | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Ack.new(id: false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F,
                                 queue_number: 100,
                                 chat_id: 17472822486@c.us,
                                 status: viewed)
```


