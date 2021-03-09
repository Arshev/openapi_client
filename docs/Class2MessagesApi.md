# OpenapiClient::Class2MessagesApi

All URIs are relative to *https://api.chat-api.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forward_message**](Class2MessagesApi.md#forward_message) | **POST** /forwardMessage | Forwarding messages to a new or existing chat.
[**get_messages**](Class2MessagesApi.md#get_messages) | **GET** /messages | Get a list of messages.
[**send_contact**](Class2MessagesApi.md#send_contact) | **POST** /sendContact | Sending a contact or contact list to a new or existing chat.
[**send_file**](Class2MessagesApi.md#send_file) | **POST** /sendFile | Send a file to a new or existing chat.
[**send_link**](Class2MessagesApi.md#send_link) | **POST** /sendLink | Send text with link and link&#39;s preview to a new or existing chat.
[**send_location**](Class2MessagesApi.md#send_location) | **POST** /sendLocation | Sending a location to a new or existing chat.
[**send_message**](Class2MessagesApi.md#send_message) | **POST** /sendMessage | Send a message to a new or existing chat.
[**send_ptt**](Class2MessagesApi.md#send_ptt) | **POST** /sendPTT | Send a ptt-audio to a new or existing chat.
[**send_v_card**](Class2MessagesApi.md#send_v_card) | **POST** /sendVCard | Sending a vcard to a new or existing chat.



## forward_message

> SendMessageStatus forward_message(forward_message_request)

Forwarding messages to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
forward_message_request = OpenapiClient::ForwardMessageRequest.new # ForwardMessageRequest | 

begin
  #Forwarding messages to a new or existing chat.
  result = api_instance.forward_message(forward_message_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->forward_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forward_message_request** | [**ForwardMessageRequest**](ForwardMessageRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## get_messages

> Messages get_messages(opts)

Get a list of messages.

To receive only new messages, pass the **lastMessageNumber** parameter from the last query.  Files from messages are guaranteed to be stored only for 30 days and can be deleted. Download the files as soon as you get to your server.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
opts = {
  last_message_number: 0, # Integer | The lastMessageNumber parameter from the last response
  last: false, # Boolean | Displays the last 100 messages. If this parameter is passed, then lastMessageNumber is ignored.
  chat_id: '17633123456@c.us', # String | Filter messages by chatId  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group.
  limit: 100, # Integer | Sets length of the message list. Default 100. With value 0 returns all messages.
  min_time: 946684800, # Integer | Filter messages received after specified time. Example: 946684800.
  max_time: 946684800 # Integer | Filter messages received before specified time. Example: 946684800.
}

begin
  #Get a list of messages.
  result = api_instance.get_messages(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->get_messages: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **last_message_number** | **Integer**| The lastMessageNumber parameter from the last response | [optional] 
 **last** | **Boolean**| Displays the last 100 messages. If this parameter is passed, then lastMessageNumber is ignored. | [optional] [default to false]
 **chat_id** | **String**| Filter messages by chatId  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group. | [optional] 
 **limit** | **Integer**| Sets length of the message list. Default 100. With value 0 returns all messages. | [optional] 
 **min_time** | **Integer**| Filter messages received after specified time. Example: 946684800. | [optional] 
 **max_time** | **Integer**| Filter messages received before specified time. Example: 946684800. | [optional] 

### Return type

[**Messages**](Messages.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_contact

> SendMessageStatus send_contact(send_contact_request)

Sending a contact or contact list to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_contact_request = OpenapiClient::SendContactRequest.new # SendContactRequest | 

begin
  #Sending a contact or contact list to a new or existing chat.
  result = api_instance.send_contact(send_contact_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_contact_request** | [**SendContactRequest**](SendContactRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_file

> SendMessageStatus send_file(send_file_request)

Send a file to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_file_request = OpenapiClient::SendFileRequest.new # SendFileRequest | 

begin
  #Send a file to a new or existing chat.
  result = api_instance.send_file(send_file_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_file: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_file_request** | [**SendFileRequest**](SendFileRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_link

> SendMessageStatus send_link(send_link_request)

Send text with link and link's preview to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_link_request = OpenapiClient::SendLinkRequest.new # SendLinkRequest | 

begin
  #Send text with link and link's preview to a new or existing chat.
  result = api_instance.send_link(send_link_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_link: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_link_request** | [**SendLinkRequest**](SendLinkRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_location

> SendMessageStatus send_location(send_location_request)

Sending a location to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_location_request = OpenapiClient::SendLocationRequest.new # SendLocationRequest | 

begin
  #Sending a location to a new or existing chat.
  result = api_instance.send_location(send_location_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_location: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_location_request** | [**SendLocationRequest**](SendLocationRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_message

> SendMessageStatus send_message(send_message_request)

Send a message to a new or existing chat.

The message will be added to the queue for sending and delivered even if the phone is disconnected from the Internet or authorization is not passed.  Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_message_request = OpenapiClient::SendMessageRequest.new # SendMessageRequest | 

begin
  #Send a message to a new or existing chat.
  result = api_instance.send_message(send_message_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_message_request** | [**SendMessageRequest**](SendMessageRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_ptt

> SendMessageStatus send_ptt(send_ptt_request)

Send a ptt-audio to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_ptt_request = OpenapiClient::SendPTTRequest.new # SendPTTRequest | 

begin
  #Send a ptt-audio to a new or existing chat.
  result = api_instance.send_ptt(send_ptt_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_ptt: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_ptt_request** | [**SendPTTRequest**](SendPTTRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## send_v_card

> SendMessageStatus send_v_card(send_v_card_request)

Sending a vcard to a new or existing chat.

Only one of two parameters is needed to determine the destination - chatId or phone.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: instanceId
  config.api_key['instanceId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['instanceId'] = 'Bearer'

  # Configure API key authorization: token
  config.api_key['token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['token'] = 'Bearer'
end

api_instance = OpenapiClient::Class2MessagesApi.new
send_v_card_request = OpenapiClient::SendVCardRequest.new # SendVCardRequest | 

begin
  #Sending a vcard to a new or existing chat.
  result = api_instance.send_v_card(send_v_card_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class2MessagesApi->send_v_card: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_v_card_request** | [**SendVCardRequest**](SendVCardRequest.md)|  | 

### Return type

[**SendMessageStatus**](SendMessageStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json

