# OpenapiClient::BanSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ban_phone_mask** | **String** |  | 
**pre_ban_message** | **String** |  | 
**set** | **Boolean** | Flag indicating that the current request has changed ban settings | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BanSettings.new(ban_phone_mask: ^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$,
                                 pre_ban_message: Do not write to me, otherwise I will send you a ban,
                                 set: false)
```


