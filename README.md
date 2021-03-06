# openapi_client

OpenapiClient - the Ruby gem for the Chat API SDK

The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)

The Chat API is based on the WhatsApp WEB protocol and excludes the ban
both when using libraries from mgp25 and the like. Despite this, your
account can be banned by anti-spam system WhatsApp after several clicking
the \"block\" button.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https:///YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https:///YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
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

api_instance = OpenapiClient::Class1InstanceApi.new

begin
  #Repeat the manual synchronization attempt with the device
  result = api_instance.call_retry
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling Class1InstanceApi->call_retry: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.chat-api.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::Class1InstanceApi* | [**call_retry**](docs/Class1InstanceApi.md#call_retry) | **POST** /retry | Repeat the manual synchronization attempt with the device
*OpenapiClient::Class1InstanceApi* | [**expiry**](docs/Class1InstanceApi.md#expiry) | **POST** /expiry | Updates the QR code after its expired
*OpenapiClient::Class1InstanceApi* | [**get_qr_code**](docs/Class1InstanceApi.md#get_qr_code) | **GET** /qr_code | Direct link to QR-code in the form of an image, not base64.
*OpenapiClient::Class1InstanceApi* | [**get_settings**](docs/Class1InstanceApi.md#get_settings) | **GET** /settings | Get settings
*OpenapiClient::Class1InstanceApi* | [**get_status**](docs/Class1InstanceApi.md#get_status) | **GET** /status | Get the account status and QR code for authorization.
*OpenapiClient::Class1InstanceApi* | [**logout**](docs/Class1InstanceApi.md#logout) | **POST** /logout | Logout from WhatsApp Web to get new QR code.
*OpenapiClient::Class1InstanceApi* | [**reboot**](docs/Class1InstanceApi.md#reboot) | **POST** /reboot | Reboot your whatsapp instance.
*OpenapiClient::Class1InstanceApi* | [**set_settings**](docs/Class1InstanceApi.md#set_settings) | **POST** /settings | Set settings
*OpenapiClient::Class1InstanceApi* | [**takeover**](docs/Class1InstanceApi.md#takeover) | **POST** /takeover | Returns the active session if the device has connected another instance of Web WhatsApp
*OpenapiClient::Class2MessagesApi* | [**forward_message**](docs/Class2MessagesApi.md#forward_message) | **POST** /forwardMessage | Forwarding messages to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**get_messages**](docs/Class2MessagesApi.md#get_messages) | **GET** /messages | Get a list of messages.
*OpenapiClient::Class2MessagesApi* | [**send_contact**](docs/Class2MessagesApi.md#send_contact) | **POST** /sendContact | Sending a contact or contact list to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**send_file**](docs/Class2MessagesApi.md#send_file) | **POST** /sendFile | Send a file to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**send_link**](docs/Class2MessagesApi.md#send_link) | **POST** /sendLink | Send text with link and link's preview to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**send_location**](docs/Class2MessagesApi.md#send_location) | **POST** /sendLocation | Sending a location to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**send_message**](docs/Class2MessagesApi.md#send_message) | **POST** /sendMessage | Send a message to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**send_ptt**](docs/Class2MessagesApi.md#send_ptt) | **POST** /sendPTT | Send a ptt-audio to a new or existing chat.
*OpenapiClient::Class2MessagesApi* | [**send_v_card**](docs/Class2MessagesApi.md#send_v_card) | **POST** /sendVCard | Sending a vcard to a new or existing chat.
*OpenapiClient::Class3ChatsApi* | [**add_group_participant**](docs/Class3ChatsApi.md#add_group_participant) | **POST** /addGroupParticipant | Adding participant to a group
*OpenapiClient::Class3ChatsApi* | [**demote_group_participant**](docs/Class3ChatsApi.md#demote_group_participant) | **POST** /demoteGroupParticipant | Demote group participant
*OpenapiClient::Class3ChatsApi* | [**get_chats**](docs/Class3ChatsApi.md#get_chats) | **GET** /dialogs | Get the chat list.
*OpenapiClient::Class3ChatsApi* | [**group**](docs/Class3ChatsApi.md#group) | **POST** /group | Creates a group and sends the message to the created group.
*OpenapiClient::Class3ChatsApi* | [**promote_group_participant**](docs/Class3ChatsApi.md#promote_group_participant) | **POST** /promoteGroupParticipant | Make participant in the group an administrator
*OpenapiClient::Class3ChatsApi* | [**read_chat**](docs/Class3ChatsApi.md#read_chat) | **POST** /readChat | Open chat for reading messages
*OpenapiClient::Class3ChatsApi* | [**remove_group_participant**](docs/Class3ChatsApi.md#remove_group_participant) | **POST** /removeGroupParticipant | Remove participant from a group
*OpenapiClient::Class4WebhooksApi* | [**set_webhook**](docs/Class4WebhooksApi.md#set_webhook) | **POST** /webhook | Sets the URL for receiving webhook
*OpenapiClient::Class5QueuesApi* | [**clear_actions_queue**](docs/Class5QueuesApi.md#clear_actions_queue) | **POST** /clearActionsQueue | Clear outbound actions queue.
*OpenapiClient::Class5QueuesApi* | [**clear_messages_queue**](docs/Class5QueuesApi.md#clear_messages_queue) | **POST** /clearMessagesQueue | Clear outbound messages queue.
*OpenapiClient::Class5QueuesApi* | [**show_actions_queue**](docs/Class5QueuesApi.md#show_actions_queue) | **GET** /showActionsQueue | Get outbound messages queue.
*OpenapiClient::Class5QueuesApi* | [**show_messages_queue**](docs/Class5QueuesApi.md#show_messages_queue) | **GET** /showMessagesQueue | Get outbound messages queue.
*OpenapiClient::Class6BanApi* | [**ban_test**](docs/Class6BanApi.md#ban_test) | **POST** /banTest | Test ban settings
*OpenapiClient::Class6BanApi* | [**get_ban_settings**](docs/Class6BanApi.md#get_ban_settings) | **GET** /banSettings | Get settings
*OpenapiClient::Class6BanApi* | [**set_ban_settings**](docs/Class6BanApi.md#set_ban_settings) | **POST** /banSettings | Set settings
*OpenapiClient::Class7TestingApi* | [**instance_statuses**](docs/Class7TestingApi.md#instance_statuses) | **GET** /instanceStatuses | Returns instance status changes history.
*OpenapiClient::Class7TestingApi* | [**webhook_statuses**](docs/Class7TestingApi.md#webhook_statuses) | **GET** /webhookStatus | Returns webhook status for message.


## Documentation for Models

 - [OpenapiClient::Ack](docs/Ack.md)
 - [OpenapiClient::BanSettings](docs/BanSettings.md)
 - [OpenapiClient::BanTestAction](docs/BanTestAction.md)
 - [OpenapiClient::BanTestStatus](docs/BanTestStatus.md)
 - [OpenapiClient::Chat](docs/Chat.md)
 - [OpenapiClient::ChatIdProp](docs/ChatIdProp.md)
 - [OpenapiClient::ChatUpdate](docs/ChatUpdate.md)
 - [OpenapiClient::Chats](docs/Chats.md)
 - [OpenapiClient::ClearActionsQueueStatus](docs/ClearActionsQueueStatus.md)
 - [OpenapiClient::ClearMessagesQueueStatus](docs/ClearMessagesQueueStatus.md)
 - [OpenapiClient::CreateGroupAction](docs/CreateGroupAction.md)
 - [OpenapiClient::CreateGroupStatus](docs/CreateGroupStatus.md)
 - [OpenapiClient::ForwardMessageRequest](docs/ForwardMessageRequest.md)
 - [OpenapiClient::GroupParticipantAction](docs/GroupParticipantAction.md)
 - [OpenapiClient::GroupParticipantStatus](docs/GroupParticipantStatus.md)
 - [OpenapiClient::InlineResponse200](docs/InlineResponse200.md)
 - [OpenapiClient::InlineResponse2001](docs/InlineResponse2001.md)
 - [OpenapiClient::InlineResponse2002](docs/InlineResponse2002.md)
 - [OpenapiClient::InlineResponse2003](docs/InlineResponse2003.md)
 - [OpenapiClient::InlineResponse2004](docs/InlineResponse2004.md)
 - [OpenapiClient::InlineResponse2005](docs/InlineResponse2005.md)
 - [OpenapiClient::InlineResponse2005Update](docs/InlineResponse2005Update.md)
 - [OpenapiClient::InlineResponse401](docs/InlineResponse401.md)
 - [OpenapiClient::InstanceStatus](docs/InstanceStatus.md)
 - [OpenapiClient::InstanceStatusAction](docs/InstanceStatusAction.md)
 - [OpenapiClient::InstanceStatusLink](docs/InstanceStatusLink.md)
 - [OpenapiClient::InstanceStatusStatusData](docs/InstanceStatusStatusData.md)
 - [OpenapiClient::InstanceStatusStatusDataActions](docs/InstanceStatusStatusDataActions.md)
 - [OpenapiClient::Message](docs/Message.md)
 - [OpenapiClient::Messages](docs/Messages.md)
 - [OpenapiClient::OutboundAction](docs/OutboundAction.md)
 - [OpenapiClient::OutboundActions](docs/OutboundActions.md)
 - [OpenapiClient::OutboundMessage](docs/OutboundMessage.md)
 - [OpenapiClient::OutboundMessages](docs/OutboundMessages.md)
 - [OpenapiClient::PhoneProp](docs/PhoneProp.md)
 - [OpenapiClient::ReadChatAction](docs/ReadChatAction.md)
 - [OpenapiClient::ReadChatStatus](docs/ReadChatStatus.md)
 - [OpenapiClient::SendContactRequest](docs/SendContactRequest.md)
 - [OpenapiClient::SendFileRequest](docs/SendFileRequest.md)
 - [OpenapiClient::SendLinkRequest](docs/SendLinkRequest.md)
 - [OpenapiClient::SendLocationRequest](docs/SendLocationRequest.md)
 - [OpenapiClient::SendMessageRequest](docs/SendMessageRequest.md)
 - [OpenapiClient::SendMessageStatus](docs/SendMessageStatus.md)
 - [OpenapiClient::SendPTTRequest](docs/SendPTTRequest.md)
 - [OpenapiClient::SendVCardRequest](docs/SendVCardRequest.md)
 - [OpenapiClient::SetWebhookStatus](docs/SetWebhookStatus.md)
 - [OpenapiClient::Settings](docs/Settings.md)
 - [OpenapiClient::Status](docs/Status.md)
 - [OpenapiClient::Statuses](docs/Statuses.md)
 - [OpenapiClient::WebhookStatus](docs/WebhookStatus.md)
 - [OpenapiClient::WebhookUrl](docs/WebhookUrl.md)


## Documentation for Authorization


### instanceId


- **Type**: API key
- **API key parameter name**: instanceId
- **Location**: URL query string

### token


- **Type**: API key
- **API key parameter name**: token
- **Location**: URL query string

