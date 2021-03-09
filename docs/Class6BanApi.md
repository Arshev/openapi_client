# OpenapiClient::Class6BanApi

All URIs are relative to *https://api.chat-api.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ban_test**](Class6BanApi.md#ban_test) | **POST** /banTest | Test ban settings
[**get_ban_settings**](Class6BanApi.md#get_ban_settings) | **GET** /banSettings | Get settings
[**set_ban_settings**](Class6BanApi.md#set_ban_settings) | **POST** /banSettings | Set settings



## ban_test

> BanTestStatus ban_test(ban_test_action)

Test ban settings

Send the phone number to find out if the instance is banning it

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

api_instance = OpenapiClient::Class6BanApi.new
ban_test_action = OpenapiClient::BanTestAction.new # BanTestAction | 

begin
  #Test ban settings
  result = api_instance.ban_test(ban_test_action)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class6BanApi->ban_test: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ban_test_action** | [**BanTestAction**](BanTestAction.md)|  | 

### Return type

[**BanTestStatus**](BanTestStatus.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded
- **Accept**: application/json


## get_ban_settings

> BanSettings get_ban_settings

Get settings

**banPhoneMask** - Regular expression on which bans on numbers will be sent  **preBanMessage** - Warning message If it is set, a message will be sent before sending the ban.

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

api_instance = OpenapiClient::Class6BanApi.new

begin
  #Get settings
  result = api_instance.get_ban_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class6BanApi->get_ban_settings: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BanSettings**](BanSettings.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_ban_settings

> BanSettings set_ban_settings(ban_settings)

Set settings

**banPhoneMask** - Regular expression on which bans on numbers will be sent  **preBanMessage** - Warning message If it is set, a message will be sent before sending the ban.

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

api_instance = OpenapiClient::Class6BanApi.new
ban_settings = OpenapiClient::BanSettings.new # BanSettings | 

begin
  #Set settings
  result = api_instance.set_ban_settings(ban_settings)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class6BanApi->set_ban_settings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ban_settings** | [**BanSettings**](BanSettings.md)|  | 

### Return type

[**BanSettings**](BanSettings.md)

### Authorization

[instanceId](../README.md#instanceId), [token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded
- **Accept**: application/json

