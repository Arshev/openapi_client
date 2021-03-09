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
  class Class5QueuesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clear outbound actions queue.
    # This method is needed when you accidentally sent thousands of actions in a row.
    # @param [Hash] opts the optional parameters
    # @return [ClearActionsQueueStatus]
    def clear_actions_queue(opts = {})
      data, _status_code, _headers = clear_actions_queue_with_http_info(opts)
      data
    end

    # Clear outbound actions queue.
    # This method is needed when you accidentally sent thousands of actions in a row.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClearActionsQueueStatus, Integer, Hash)>] ClearActionsQueueStatus data, response status code and response headers
    def clear_actions_queue_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class5QueuesApi.clear_actions_queue ...'
      end
      # resource path
      local_var_path = '/clearActionsQueue'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ClearActionsQueueStatus' 

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
        @api_client.config.logger.debug "API called: Class5QueuesApi#clear_actions_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear outbound messages queue.
    # This method is needed when you accidentally sent thousands of messages in a row.
    # @param [Hash] opts the optional parameters
    # @return [ClearMessagesQueueStatus]
    def clear_messages_queue(opts = {})
      data, _status_code, _headers = clear_messages_queue_with_http_info(opts)
      data
    end

    # Clear outbound messages queue.
    # This method is needed when you accidentally sent thousands of messages in a row.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClearMessagesQueueStatus, Integer, Hash)>] ClearMessagesQueueStatus data, response status code and response headers
    def clear_messages_queue_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class5QueuesApi.clear_messages_queue ...'
      end
      # resource path
      local_var_path = '/clearMessagesQueue'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ClearMessagesQueueStatus' 

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
        @api_client.config.logger.debug "API called: Class5QueuesApi#clear_messages_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get outbound messages queue.
    # When you create an action, all actions are queued up. If an action is not executed, it remains in the queue and will be sent for execution in time. again. The action cannot be executed due to the status of the device connected to the account.  This method give the last 100 actions in the queue.
    # @param [Hash] opts the optional parameters
    # @return [OutboundActions]
    def show_actions_queue(opts = {})
      data, _status_code, _headers = show_actions_queue_with_http_info(opts)
      data
    end

    # Get outbound messages queue.
    # When you create an action, all actions are queued up. If an action is not executed, it remains in the queue and will be sent for execution in time. again. The action cannot be executed due to the status of the device connected to the account.  This method give the last 100 actions in the queue.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OutboundActions, Integer, Hash)>] OutboundActions data, response status code and response headers
    def show_actions_queue_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class5QueuesApi.show_actions_queue ...'
      end
      # resource path
      local_var_path = '/showActionsQueue'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OutboundActions' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class5QueuesApi#show_actions_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get outbound messages queue.
    # When sending messages, all messages are in the queue. If the message is not sent, then it remains in the queue and in time it will be sent again. The message may not be sent due to the status of the device connected to the account.   This method give the last 100 messages in the queue.
    # @param [Hash] opts the optional parameters
    # @return [OutboundMessages]
    def show_messages_queue(opts = {})
      data, _status_code, _headers = show_messages_queue_with_http_info(opts)
      data
    end

    # Get outbound messages queue.
    # When sending messages, all messages are in the queue. If the message is not sent, then it remains in the queue and in time it will be sent again. The message may not be sent due to the status of the device connected to the account.   This method give the last 100 messages in the queue.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OutboundMessages, Integer, Hash)>] OutboundMessages data, response status code and response headers
    def show_messages_queue_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class5QueuesApi.show_messages_queue ...'
      end
      # resource path
      local_var_path = '/showMessagesQueue'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OutboundMessages' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Class5QueuesApi#show_messages_queue\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end