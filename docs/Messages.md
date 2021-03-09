# OpenapiClient::Messages

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**Array&lt;Message&gt;**](Message.md) |  | [optional] 
**last_message_number** | **Integer** | next query should be /messages?lastMessageNumber&#x3D;199 | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Messages.new(messages: null,
                                 last_message_number: 199)
```


