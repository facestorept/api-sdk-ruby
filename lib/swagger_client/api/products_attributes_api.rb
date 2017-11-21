=begin
#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require "uri"

module SwaggerClient
  class ProductsAttributesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Creates a new attribute of products in the store.
    # @param attribute Attribute to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<Attribute>]
    def add_products_attributes(attribute, opts = {})
      data, _status_code, _headers = add_products_attributes_with_http_info(attribute, opts)
      return data
    end

    # 
    # Creates a new attribute of products in the store.
    # @param attribute Attribute to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Attribute>, Fixnum, Hash)>] Array<Attribute> data, response status code and response headers
    def add_products_attributes_with_http_info(attribute, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsAttributesApi.add_products_attributes ..."
      end
      # verify the required parameter 'attribute' is set
      if @api_client.config.client_side_validation && attribute.nil?
        fail ArgumentError, "Missing the required parameter 'attribute' when calling ProductsAttributesApi.add_products_attributes"
      end
      # resource path
      local_var_path = "/attributes"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(attribute)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Attribute>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsAttributesApi#add_products_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # deletes a single attribute of products based on the ID supplied
    # @param id ID of attribute to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_product_attribute_by_id(id, opts = {})
      delete_product_attribute_by_id_with_http_info(id, opts)
      return nil
    end

    # 
    # deletes a single attribute of products based on the ID supplied
    # @param id ID of attribute to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_product_attribute_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsAttributesApi.delete_product_attribute_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsAttributesApi.delete_product_attribute_by_id"
      end
      # resource path
      local_var_path = "/attributes/{id}/".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsAttributesApi#delete_product_attribute_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns a attribute of products based on a single ID  ### Includes You can give the following values on includes parameter: `options` 
    # @param id ID of attribute to fetch
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :includes Include associated objects within response
    # @return [Attribute]
    def get_product_attribute_by_id(id, opts = {})
      data, _status_code, _headers = get_product_attribute_by_id_with_http_info(id, opts)
      return data
    end

    # 
    # Returns a attribute of products based on a single ID  ### Includes You can give the following values on includes parameter: &#x60;options&#x60; 
    # @param id ID of attribute to fetch
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :includes Include associated objects within response
    # @return [Array<(Attribute, Fixnum, Hash)>] Attribute data, response status code and response headers
    def get_product_attribute_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsAttributesApi.get_product_attribute_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsAttributesApi.get_product_attribute_by_id"
      end
      # resource path
      local_var_path = "/attributes/{id}/".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'includes'] = @api_client.build_collection_param(opts[:'includes'], :csv) if !opts[:'includes'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Attribute')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsAttributesApi#get_product_attribute_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns all attributes of products from the system that the user has access to  ### Includes You can give the following values on includes parameter: `options` 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :includes Include associated objects within response
    # @option opts [Integer] :limit max records to return
    # @option opts [Array<String>] :order_by Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60; 
    # @return [Array<Attribute>]
    def get_products_attributes(opts = {})
      data, _status_code, _headers = get_products_attributes_with_http_info(opts)
      return data
    end

    # 
    # Returns all attributes of products from the system that the user has access to  ### Includes You can give the following values on includes parameter: &#x60;options&#x60; 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :includes Include associated objects within response
    # @option opts [Integer] :limit max records to return
    # @option opts [Array<String>] :order_by Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60; 
    # @return [Array<(Array<Attribute>, Fixnum, Hash)>] Array<Attribute> data, response status code and response headers
    def get_products_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsAttributesApi.get_products_attributes ..."
      end
      # resource path
      local_var_path = "/attributes"

      # query parameters
      query_params = {}
      query_params[:'includes'] = @api_client.build_collection_param(opts[:'includes'], :csv) if !opts[:'includes'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order_by'] = @api_client.build_collection_param(opts[:'order_by'], :multi) if !opts[:'order_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Attribute>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsAttributesApi#get_products_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # update a single attribute of products based on the ID supplied
    # @param id ID of attribute to update
    # @param product_attribute Attribute to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Attribute]
    def update_product_attribute_by_id(id, product_attribute, opts = {})
      data, _status_code, _headers = update_product_attribute_by_id_with_http_info(id, product_attribute, opts)
      return data
    end

    # 
    # update a single attribute of products based on the ID supplied
    # @param id ID of attribute to update
    # @param product_attribute Attribute to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(Attribute, Fixnum, Hash)>] Attribute data, response status code and response headers
    def update_product_attribute_by_id_with_http_info(id, product_attribute, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductsAttributesApi.update_product_attribute_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductsAttributesApi.update_product_attribute_by_id"
      end
      # verify the required parameter 'product_attribute' is set
      if @api_client.config.client_side_validation && product_attribute.nil?
        fail ArgumentError, "Missing the required parameter 'product_attribute' when calling ProductsAttributesApi.update_product_attribute_by_id"
      end
      # resource path
      local_var_path = "/attributes/{id}/".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(product_attribute)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Attribute')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsAttributesApi#update_product_attribute_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
