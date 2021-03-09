# OpenapiClient::Status

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | status date | [optional] 
**status** | **String** | status name (\&quot;init\&quot;, \&quot;got qr code\&quot;, \&quot;loading\&quot;, \&quot;authenticated\&quot;) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Status.new(date: 2019-10-07T21:40:55.000Z,
                                 status: init)
```


