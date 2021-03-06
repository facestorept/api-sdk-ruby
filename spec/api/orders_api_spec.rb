=begin
#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::OrdersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instance of OrdersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::OrdersApi)
    end
  end

  # unit tests for get_order_by_id
  # 
  # Returns all orders from the system that the user has access to  ### Includes You can give the following values on includes parameter: &#x60;products, customers&#x60; 
  # @param id ID of customer
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :includes Include associated objects within response
  # @return [Array<Order>]
  describe 'get_order_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_orders
  # 
  # Returns all orders from the system that the user has access to  ### Includes You can give the following values on includes parameter: &#x60;products, customers&#x60; 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :includes Include associated objects within response
  # @option opts [Integer] :limit max records to return
  # @option opts [Array<String>] :order_by Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60; 
  # @return [Array<Order>]
  describe 'get_orders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
