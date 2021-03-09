# OpenapiClient::Class7TestingApi

All URIs are relative to *https://api.chat-api.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instance_statuses**](Class7TestingApi.md#instance_statuses) | **GET** /instanceStatuses | Returns instance status changes history.
[**webhook_statuses**](Class7TestingApi.md#webhook_statuses) | **GET** /webhookStatus | Returns webhook status for message.



## instance_statuses

> Statuses instance_statuses(opts)

Returns instance status changes history.

Requires enable \"instanceStatuses\" option for collecting data.

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

api_instance = OpenapiClient::Class7TestingApi.new
opts = {
  min_time: 946684800, # Integer | Filter statuses received after specified date. Example: 946684800.
  max_time: 946684800 # Integer | Filter statuses received before specified date. Example: 946684800.
}

begin
  #Returns instance status changes history.
  result = api_instance.instance_statuses(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class7TestingApi->instance_statuses: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_time** | **Integer**| Filter statuses received after specified date. Example: 946684800. | [optional] 
 **max_time** | **Integer**| Filter statuses received before specified date. Example: 946684800. | [optional] 

### Return type

[**Statuses**](Statuses.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_statuses

> WebhookStatus webhook_statuses(msg_id)

Returns webhook status for message.

Requires enable \"webhookStatuses\" option for collecting data.

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

api_instance = OpenapiClient::Class7TestingApi.new
msg_id = 'false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F' # String | Message ID. Example: false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F.

begin
  #Returns webhook status for message.
  result = api_instance.webhook_statuses(msg_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class7TestingApi->webhook_statuses: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **msg_id** | **String**| Message ID. Example: false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F. | 

### Return type

[**WebhookStatus**](WebhookStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

