# OpenapiClient::OutboundActions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_actions** | **Integer** | Total number of actions in the queue | [optional] 
**first100** | [**Array&lt;OutboundAction&gt;**](OutboundAction.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OutboundActions.new(total_actions: 199,
                                 first100: null)
```


