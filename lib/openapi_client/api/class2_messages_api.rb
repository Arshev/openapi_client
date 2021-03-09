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
  class Class2MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Forwarding messages to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param forward_message_request [ForwardMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def forward_message(forward_message_request, opts = {})
      data, _status_code, _headers = forward_message_with_http_info(forward_message_request, opts)
      data
    end

    # Forwarding messages to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param forward_message_request [ForwardMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def forward_message_with_http_info(forward_message_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.forward_message ...'
      end
      # verify the required parameter 'forward_message_request' is set
      if @api_client.config.client_side_validation && forward_message_request.nil?
        fail ArgumentError, "Missing the required parameter 'forward_message_request' when calling Class2MessagesApi.forward_message"
      end
      # resource path
      local_var_path = '/forwardMessage'

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
      post_body = opts[:body] || @api_client.object_to_http_body(forward_message_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#forward_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of messages.
    # To receive only new messages, pass the **lastMessageNumber** parameter from the last query.  Files from messages are guaranteed to be stored only for 30 days and can be deleted. Download the files as soon as you get to your server.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_message_number The lastMessageNumber parameter from the last response
    # @option opts [Boolean] :last Displays the last 100 messages. If this parameter is passed, then lastMessageNumber is ignored. (default to false)
    # @option opts [String] :chat_id Filter messages by chatId  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group.
    # @option opts [Integer] :limit Sets length of the message list. Default 100. With value 0 returns all messages.
    # @option opts [Integer] :min_time Filter messages received after specified time. Example: 946684800.
    # @option opts [Integer] :max_time Filter messages received before specified time. Example: 946684800.
    # @return [Messages]
    def get_messages(opts = {})
      data, _status_code, _headers = get_messages_with_http_info(opts)
      data
    end

    # Get a list of messages.
    # To receive only new messages, pass the **lastMessageNumber** parameter from the last query.  Files from messages are guaranteed to be stored only for 30 days and can be deleted. Download the files as soon as you get to your server.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_message_number The lastMessageNumber parameter from the last response
    # @option opts [Boolean] :last Displays the last 100 messages. If this parameter is passed, then lastMessageNumber is ignored.
    # @option opts [String] :chat_id Filter messages by chatId  Chat ID from the message list. Examples: 17633123456@c.us for private messages and 17680561234-1479621234@g.us for the group.
    # @option opts [Integer] :limit Sets length of the message list. Default 100. With value 0 returns all messages.
    # @option opts [Integer] :min_time Filter messages received after specified time. Example: 946684800.
    # @option opts [Integer] :max_time Filter messages received before specified time. Example: 946684800.
    # @return [Array<(Messages, Integer, Hash)>] Messages data, response status code and response headers
    def get_messages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.get_messages ...'
      end
      if @api_client.config.client_side_validation && !opts[:'last_message_number'].nil? && opts[:'last_message_number'] < 0
        fail ArgumentError, 'invalid value for "opts[:"last_message_number"]" when calling Class2MessagesApi.get_messages, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/messages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'lastMessageNumber'] = opts[:'last_message_number'] if !opts[:'last_message_number'].nil?
      query_params[:'last'] = opts[:'last'] if !opts[:'last'].nil?
      query_params[:'chatId'] = opts[:'chat_id'] if !opts[:'chat_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'min_time'] = opts[:'min_time'] if !opts[:'min_time'].nil?
      query_params[:'max_time'] = opts[:'max_time'] if !opts[:'max_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Messages' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#get_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sending a contact or contact list to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_contact_request [SendContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_contact(send_contact_request, opts = {})
      data, _status_code, _headers = send_contact_with_http_info(send_contact_request, opts)
      data
    end

    # Sending a contact or contact list to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_contact_request [SendContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_contact_with_http_info(send_contact_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_contact ...'
      end
      # verify the required parameter 'send_contact_request' is set
      if @api_client.config.client_side_validation && send_contact_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_contact_request' when calling Class2MessagesApi.send_contact"
      end
      # resource path
      local_var_path = '/sendContact'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_contact_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a file to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_file_request [SendFileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_file(send_file_request, opts = {})
      data, _status_code, _headers = send_file_with_http_info(send_file_request, opts)
      data
    end

    # Send a file to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_file_request [SendFileRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_file_with_http_info(send_file_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_file ...'
      end
      # verify the required parameter 'send_file_request' is set
      if @api_client.config.client_side_validation && send_file_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_file_request' when calling Class2MessagesApi.send_file"
      end
      # resource path
      local_var_path = '/sendFile'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_file_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send text with link and link's preview to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_link_request [SendLinkRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_link(send_link_request, opts = {})
      data, _status_code, _headers = send_link_with_http_info(send_link_request, opts)
      data
    end

    # Send text with link and link&#39;s preview to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_link_request [SendLinkRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_link_with_http_info(send_link_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_link ...'
      end
      # verify the required parameter 'send_link_request' is set
      if @api_client.config.client_side_validation && send_link_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_link_request' when calling Class2MessagesApi.send_link"
      end
      # resource path
      local_var_path = '/sendLink'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_link_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sending a location to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_location_request [SendLocationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_location(send_location_request, opts = {})
      data, _status_code, _headers = send_location_with_http_info(send_location_request, opts)
      data
    end

    # Sending a location to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_location_request [SendLocationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_location_with_http_info(send_location_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_location ...'
      end
      # verify the required parameter 'send_location_request' is set
      if @api_client.config.client_side_validation && send_location_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_location_request' when calling Class2MessagesApi.send_location"
      end
      # resource path
      local_var_path = '/sendLocation'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_location_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a message to a new or existing chat.
    # The message will be added to the queue for sending and delivered even if the phone is disconnected from the Internet or authorization is not passed.  Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_message_request [SendMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_message(send_message_request, opts = {})
      data, _status_code, _headers = send_message_with_http_info(send_message_request, opts)
      data
    end

    # Send a message to a new or existing chat.
    # The message will be added to the queue for sending and delivered even if the phone is disconnected from the Internet or authorization is not passed.  Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_message_request [SendMessageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_message_with_http_info(send_message_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_message ...'
      end
      # verify the required parameter 'send_message_request' is set
      if @api_client.config.client_side_validation && send_message_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_message_request' when calling Class2MessagesApi.send_message"
      end
      # resource path
      local_var_path = '/sendMessage'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_message_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a ptt-audio to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_ptt_request [SendPTTRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_ptt(send_ptt_request, opts = {})
      data, _status_code, _headers = send_ptt_with_http_info(send_ptt_request, opts)
      data
    end

    # Send a ptt-audio to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_ptt_request [SendPTTRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_ptt_with_http_info(send_ptt_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_ptt ...'
      end
      # verify the required parameter 'send_ptt_request' is set
      if @api_client.config.client_side_validation && send_ptt_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_ptt_request' when calling Class2MessagesApi.send_ptt"
      end
      # resource path
      local_var_path = '/sendPTT'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_ptt_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_ptt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sending a vcard to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_v_card_request [SendVCardRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SendMessageStatus]
    def send_v_card(send_v_card_request, opts = {})
      data, _status_code, _headers = send_v_card_with_http_info(send_v_card_request, opts)
      data
    end

    # Sending a vcard to a new or existing chat.
    # Only one of two parameters is needed to determine the destination - chatId or phone.
    # @param send_v_card_request [SendVCardRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SendMessageStatus, Integer, Hash)>] SendMessageStatus data, response status code and response headers
    def send_v_card_with_http_info(send_v_card_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Class2MessagesApi.send_v_card ...'
      end
      # verify the required parameter 'send_v_card_request' is set
      if @api_client.config.client_side_validation && send_v_card_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_v_card_request' when calling Class2MessagesApi.send_v_card"
      end
      # resource path
      local_var_path = '/sendVCard'

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
      post_body = opts[:body] || @api_client.object_to_http_body(send_v_card_request) 

      # return_type
      return_type = opts[:return_type] || 'SendMessageStatus' 

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
        @api_client.config.logger.debug "API called: Class2MessagesApi#send_v_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
