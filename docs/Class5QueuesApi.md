# OpenapiClient::Class5QueuesApi

All URIs are relative to *https://api.chat-api.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_actions_queue**](Class5QueuesApi.md#clear_actions_queue) | **POST** /clearActionsQueue | Clear outbound actions queue.
[**clear_messages_queue**](Class5QueuesApi.md#clear_messages_queue) | **POST** /clearMessagesQueue | Clear outbound messages queue.
[**show_actions_queue**](Class5QueuesApi.md#show_actions_queue) | **GET** /showActionsQueue | Get outbound messages queue.
[**show_messages_queue**](Class5QueuesApi.md#show_messages_queue) | **GET** /showMessagesQueue | Get outbound messages queue.



## clear_actions_queue

> ClearActionsQueueStatus clear_actions_queue

Clear outbound actions queue.

This method is needed when you accidentally sent thousands of actions in a row.

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

api_instance = OpenapiClient::Class5QueuesApi.new

begin
  #Clear outbound actions queue.
  result = api_instance.clear_actions_queue
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class5QueuesApi->clear_actions_queue: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ClearActionsQueueStatus**](ClearActionsQueueStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clear_messages_queue

> ClearMessagesQueueStatus clear_messages_queue

Clear outbound messages queue.

This method is needed when you accidentally sent thousands of messages in a row.

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

api_instance = OpenapiClient::Class5QueuesApi.new

begin
  #Clear outbound messages queue.
  result = api_instance.clear_messages_queue
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class5QueuesApi->clear_messages_queue: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ClearMessagesQueueStatus**](ClearMessagesQueueStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_actions_queue

> OutboundActions show_actions_queue

Get outbound messages queue.

When you create an action, all actions are queued up. If an action is not executed, it remains in the queue and will be sent for execution in time. again. The action cannot be executed due to the status of the device connected to the account.  This method give the last 100 actions in the queue.

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

api_instance = OpenapiClient::Class5QueuesApi.new

begin
  #Get outbound messages queue.
  result = api_instance.show_actions_queue
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class5QueuesApi->show_actions_queue: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OutboundActions**](OutboundActions.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_messages_queue

> OutboundMessages show_messages_queue

Get outbound messages queue.

When sending messages, all messages are in the queue. If the message is not sent, then it remains in the queue and in time it will be sent again. The message may not be sent due to the status of the device connected to the account.   This method give the last 100 messages in the queue.

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

api_instance = OpenapiClient::Class5QueuesApi.new

begin
  #Get outbound messages queue.
  result = api_instance.show_messages_queue
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class5QueuesApi->show_messages_queue: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OutboundMessages**](OutboundMessages.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

