=begin
#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BrandsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BrandsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BrandsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BrandsApi' do
    it 'should create an instance of BrandsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BrandsApi)
    end
  end

  # unit tests for add_brands
  # 
  # Creates a new brand in the store.
  # @param brand Brand to add to the store
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse201]
  describe 'add_brands test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_brand_by_id
  # 
  # Deletes a single brand based on the ID supplied
  # @param id ID of brand to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_brand_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_brand_by_id
  # 
  # Returns a brand based on a single ID  ### Includes You can give the following values on includea parameter: &#x60;routes, products&#x60; 
  # @param id ID of brand to fetch
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :includes Include associated objects within response
  # @option opts [Integer] :limit max records to return
  # @return [InlineResponse201]
  describe 'get_brand_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_brands
  # 
  # Returns all brands from the system that the user has access to  ### Includes You can give the following values on includes parameter: &#x60;routes, products&#x60; 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :includes Include associated objects within response
  # @option opts [Integer] :limit max records to return
  # @option opts [Array<String>] :order_by Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60; 
  # @return [InlineResponse200]
  describe 'get_brands test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_category_by_id
  # 
  # Update a single brand based on the ID supplied
  # @param id ID of brand to update
  # @param brand Brand to update in store
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_category_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_category_by_id_0
  # 
  # Update a single brand based on the ID supplied
  # @param id ID of brand to update
  # @param brand Brand to update in store
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_category_by_id_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
