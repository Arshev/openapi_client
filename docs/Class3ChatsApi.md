# OpenapiClient::Class3ChatsApi

All URIs are relative to *https://api.chat-api.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group_participant**](Class3ChatsApi.md#add_group_participant) | **POST** /addGroupParticipant | Adding participant to a group
[**demote_group_participant**](Class3ChatsApi.md#demote_group_participant) | **POST** /demoteGroupParticipant | Demote group participant
[**get_chats**](Class3ChatsApi.md#get_chats) | **GET** /dialogs | Get the chat list.
[**group**](Class3ChatsApi.md#group) | **POST** /group | Creates a group and sends the message to the created group.
[**promote_group_participant**](Class3ChatsApi.md#promote_group_participant) | **POST** /promoteGroupParticipant | Make participant in the group an administrator
[**read_chat**](Class3ChatsApi.md#read_chat) | **POST** /readChat | Open chat for reading messages
[**remove_group_participant**](Class3ChatsApi.md#remove_group_participant) | **POST** /removeGroupParticipant | Remove participant from a group



## add_group_participant

> GroupParticipantStatus add_group_participant(group_participant_action)

Adding participant to a group

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

api_instance = OpenapiClient::Class3ChatsApi.new
group_participant_action = OpenapiClient::GroupParticipantAction.new # GroupParticipantAction | 

begin
  #Adding participant to a group
  result = api_instance.add_group_participant(group_participant_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->add_group_participant: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_participant_action** | [**GroupParticipantAction**](GroupParticipantAction.md)|  | 

### Return type

[**GroupParticipantStatus**](GroupParticipantStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## demote_group_participant

> GroupParticipantStatus demote_group_participant(group_participant_action)

Demote group participant

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

api_instance = OpenapiClient::Class3ChatsApi.new
group_participant_action = OpenapiClient::GroupParticipantAction.new # GroupParticipantAction | 

begin
  #Demote group participant
  result = api_instance.demote_group_participant(group_participant_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->demote_group_participant: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_participant_action** | [**GroupParticipantAction**](GroupParticipantAction.md)|  | 

### Return type

[**GroupParticipantStatus**](GroupParticipantStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## get_chats

> Chats get_chats

Get the chat list.

The chat list includes avatars.

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

api_instance = OpenapiClient::Class3ChatsApi.new

begin
  #Get the chat list.
  result = api_instance.get_chats
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->get_chats: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Chats**](Chats.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## group

> CreateGroupStatus group(create_group_action)

Creates a group and sends the message to the created group.

The group will be added to the queue for sending and sooner or later it will be created, even if the phone is disconnected from the Internet or the authorization is not passed.   2 Oct 2018 update: chatId parameter will be returned if group was created on your phone within 20 second.

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

api_instance = OpenapiClient::Class3ChatsApi.new
create_group_action = OpenapiClient::CreateGroupAction.new # CreateGroupAction | 

begin
  #Creates a group and sends the message to the created group.
  result = api_instance.group(create_group_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_group_action** | [**CreateGroupAction**](CreateGroupAction.md)|  | 

### Return type

[**CreateGroupStatus**](CreateGroupStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## promote_group_participant

> GroupParticipantStatus promote_group_participant(group_participant_action)

Make participant in the group an administrator

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

api_instance = OpenapiClient::Class3ChatsApi.new
group_participant_action = OpenapiClient::GroupParticipantAction.new # GroupParticipantAction | 

begin
  #Make participant in the group an administrator
  result = api_instance.promote_group_participant(group_participant_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->promote_group_participant: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_participant_action** | [**GroupParticipantAction**](GroupParticipantAction.md)|  | 

### Return type

[**GroupParticipantStatus**](GroupParticipantStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## read_chat

> ReadChatStatus read_chat(read_chat_action)

Open chat for reading messages

Use this method to make users see their messages read.

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

api_instance = OpenapiClient::Class3ChatsApi.new
read_chat_action = OpenapiClient::ReadChatAction.new # ReadChatAction | 

begin
  #Open chat for reading messages
  result = api_instance.read_chat(read_chat_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->read_chat: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **read_chat_action** | [**ReadChatAction**](ReadChatAction.md)|  | 

### Return type

[**ReadChatStatus**](ReadChatStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json


## remove_group_participant

> GroupParticipantStatus remove_group_participant(group_participant_action)

Remove participant from a group

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

api_instance = OpenapiClient::Class3ChatsApi.new
group_participant_action = OpenapiClient::GroupParticipantAction.new # GroupParticipantAction | 

begin
  #Remove participant from a group
  result = api_instance.remove_group_participant(group_participant_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class3ChatsApi->remove_group_participant: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_participant_action** | [**GroupParticipantAction**](GroupParticipantAction.md)|  | 

### Return type

[**GroupParticipantStatus**](GroupParticipantStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, application/json
- **Accept**: application/json

