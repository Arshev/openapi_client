=begin
#Chat API SDK

#The SDK allows you to receive and send messages through your WhatsApp account. [Sign up now](https://app.chat-api.com/)  The Chat API is based on the WhatsApp WEB protocol and excludes the ban both when using libraries from mgp25 and the like. Despite this, your account can be banned by anti-spam system WhatsApp after several clicking the \"block\" button.

The version of the OpenAPI document: 1.0.0
Contact: sale@chat-api.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::Class7TestingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Class7TestingApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::Class7TestingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Class7TestingApi' do
    it 'should create an instance of Class7TestingApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::Class7TestingApi)
    end
  end

  # unit tests for instance_statuses
  # Returns instance status changes history.
  # Requires enable \&quot;instanceStatuses\&quot; option for collecting data.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :min_time Filter statuses received after specified date. Example: 946684800.
  # @option opts [Integer] :max_time Filter statuses received before specified date. Example: 946684800.
  # @return [Statuses]
  describe 'instance_statuses test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhook_statuses
  # Returns webhook status for message.
  # Requires enable \&quot;webhookStatuses\&quot; option for collecting data.
  # @param msg_id Message ID. Example: false_17472822486@c.us_DF38E6A25B42CC8CCE57EC40F.
  # @param [Hash] opts the optional parameters
  # @return [WebhookStatus]
  describe 'webhook_statuses test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
