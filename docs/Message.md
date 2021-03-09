# OpenapiClient::Message

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | unique id | [optional] 
**body** | **String** | text message for type \&quot;chat\&quot;, or link to download the file for \&quot;ptt\&quot;, \&quot;image\&quot;, \&quot;audio\&quot;, \&quot;video\&quot; and \&quot;document\&quot;, or latitude and longitude for \&quot;location\&quot;, or message \&quot;[Call]\&quot; for \&quot;call_log\&quot; | [optional] 
**type** | **String** | type of the message | [optional] 
**sender_name** | **String** | Sender name | [optional] 
**from_me** | **Boolean** | true - outgoing, false - incoming | [optional] 
**author** | **String** | Author ID of the message, useful for groups | [optional] 
**time** | **Integer** | send time, unix timestamp | [optional] 
**chat_id** | **String** | chat ID | [optional] 
**message_number** | **Integer** | sequence number of the message in the database | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Message.new(id: false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F,
                                 body: Ok!,
                                 type: chat,
                                 sender_name: Ilya,
                                 from_me: true,
                                 author: 17472822486@c.us,
                                 time: 1504208593,
                                 chat_id: 17472822486@c.us,
                                 message_number: 100)
```


