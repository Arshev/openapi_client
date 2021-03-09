# OpenapiClient::Chat

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | chat id | [optional] 
**name** | **String** | chat name | [optional] 
**image** | **String** | HTTPS link on avatar or group image | [optional] 
**metadata** | [**Object**](.md) | Additional info about chat | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Chat.new(id: 1493046918@g.us-13216468942@c.us,
                                 name: Ok!,
                                 image: https://pps.whatsapp.net/v/t61.11540-24/42886681_356710581739497_4892819781461213184_n.jpg?oe&#x3D;5BD90F82&amp;oh&#x3D;c256f7e5c7aeccd19cf2e626f3ef4236,
                                 metadata: null)
```


