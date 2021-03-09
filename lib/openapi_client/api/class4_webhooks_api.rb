=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class Class4WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Sets the URL for receiving webhook
    # Sets the URL for receiving webhook notifications of new messages and message delivery events (ack).  **API responses in \"Callbacks\" tab**
    # @param webhook_url [WebhookUrl] 
    # @param [Hash] opts the optional parameters
    # @return [SetWebhookStatus]
    def set_webhook(webhook_url, opts = {})
      data, _status_code, _headers = set_webhook_with_http_info(webhook_url, opts)
      data
    end

    # Sets the URL for receiving webhook
    # Sets the URL for receiving webhook notifications of new messages and message delivery events (ack).  **API responses in \&quot;Callbacks\&quot; tab**
    # @param webhook_url [WebhookUrl] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetWebhookStatus, Integer, Hash)>] SetWebhookStatus data, response status code and response headers
    def set_webhook_with_http_info(webhook_url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class4WebhooksApi.set_webhook ...'
      end
      # verify the required parameter 'webhook_url' is set
      if @api_client.config.client_side_validation && webhook_url.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_url' when calling Class4WebhooksApi.set_webhook"
      end
      # resource path
      local_var_path = '/webhook'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(webhook_url) 

      # return_type
      return_type = opts[:return_type] || 'SetWebhookStatus' 

      # auth_names
      auth_names = opts[:auth_names] || ['instanceId', 'token']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class4WebhooksApi#set_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end