# OpenapiClient::InlineResponse2005Update

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhook_url** | **String** |  | [optional] 
**ack_notifications_on** | **Boolean** |  | [optional] 
**chat_update_on** | **Boolean** |  | [optional] 
**video_upload_on** | **Boolean** |  | [optional] 
**proxy** | **String** |  | [optional] 
**guaranteed_hooks** | **Boolean** |  | [optional] 
**ignore_old_messages** | **Boolean** |  | [optional] 
**process_archive** | **Boolean** |  | [optional] 
**instance_statuses** | **Boolean** |  | [optional] 
**webhook_statuses** | **Boolean** |  | [optional] 
**status_notifications_on** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse2005Update.new(webhook_url: http://bin.chat-api.com/1f9aj261,
                                 ack_notifications_on: true,
                                 chat_update_on: null,
                                 video_upload_on: null,
                                 proxy: 8.8.8.8:4888,
                                 guaranteed_hooks: null,
                                 ignore_old_messages: null,
                                 process_archive: null,
                                 instance_statuses: null,
                                 webhook_statuses: null,
                                 status_notifications_on: null)
```


