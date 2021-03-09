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

# Unit tests for OpenapiClient::Class6BanApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Class6BanApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::Class6BanApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Class6BanApi' do
    it 'should create an instance of Class6BanApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::Class6BanApi)
    end
  end

  # unit tests for ban_test
  # Test ban settings
  # Send the phone number to find out if the instance is banning it
  # @param ban_test_action 
  # @param [Hash] opts the optional parameters
  # @return [BanTestStatus]
  describe 'ban_test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ban_settings
  # Get settings
  # **banPhoneMask** - Regular expression on which bans on numbers will be sent  **preBanMessage** - Warning message If it is set, a message will be sent before sending the ban.
  # @param [Hash] opts the optional parameters
  # @return [BanSettings]
  describe 'get_ban_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_ban_settings
  # Set settings
  # **banPhoneMask** - Regular expression on which bans on numbers will be sent  **preBanMessage** - Warning message If it is set, a message will be sent before sending the ban.
  # @param ban_settings 
  # @param [Hash] opts the optional parameters
  # @return [BanSettings]
  describe 'set_ban_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end