# OpenapiClient::ClearMessagesQueueStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Messages queue clear status | [optional] 
**message_texts_example** | **Array&lt;String&gt;** | Content of the first hundred messages from the cleaned queue | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ClearMessagesQueueStatus.new(message: Cleared 2 messages,
                                 message_texts_example: null)
```


