# OpenapiClient::CreateGroupAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_name** | **String** | Name of the group being created | 
**chat_ids** | **Array&lt;String&gt;** | **Required if phones is not set**  An array of new participients chatIds.  | [optional] 
**phones** | **Array&lt;Integer&gt;** | **Required if chatIds is not set**  An array of phones starting with the country code. You do not need to add your number.   USA example: [17472822486&#39;]. | [optional] 
**message_text** | **String** | The text of the message that will be sent to the group when it is created. If you do not set a parameter, the message will not be sent | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CreateGroupAction.new(group_name: New group,
                                 chat_ids: null,
                                 phones: null,
                                 message_text: Group created!)
```


