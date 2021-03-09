# OpenapiClient::BanTestStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**banned** | **Boolean** |  | [optional] 
**message** | **String** |  | [optional] 
**phone** | **String** | Test phone number | [optional] 
**ban_phone_mask** | **String** | Test regex | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BanTestStatus.new(banned: true,
                                 message: Do not write to me, otherwise I will send you a ban,
                                 phone: 17472822486,
                                 ban_phone_mask: null)
```


