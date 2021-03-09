# OpenapiClient::GroupParticipantAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_id** | **String** | Chat ID from the chat list. Examples: 19680561234-1479621234@g.us for the group. | 
**participant_chat_id** | **String** | **Required if participantPhone is not set**  Chat ID from the message list. Examples: 17633123456@c.us. Used instead of the participantPhone parameter. | 
**participant_phone** | **Integer** | **Required if participantChatId is not set**  A phone number starting with the country code. You do not need to add your number.   USA example: 17472822486. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::GroupParticipantAction.new(group_id: null,
                                 participant_chat_id: null,
                                 participant_phone: null)
```


