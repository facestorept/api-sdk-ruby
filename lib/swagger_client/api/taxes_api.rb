=begin
#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require "uri"

module SwaggerClient
  class TaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Creates a new tax in the store.
    # @param tax Tax to add to the store
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def add_taxes(tax, opts = {})
      data, _status_code, _headers = add_taxes_with_http_info(tax, opts)
      return data
    end

    # 
    # Creates a new tax in the store.
    # @param tax Tax to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def add_taxes_with_http_info(tax, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.add_taxes ..."
      end
      # verify the required parameter 'tax' is set
      if @api_client.config.client_side_validation && tax.nil?
        fail ArgumentError, "Missing the required parameter 'tax' when calling TaxesApi.add_taxes"
      end
      # resource path
      local_var_path = "/taxes"

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
      post_body = @api_client.object_to_http_body(tax)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#add_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # deletes a single tax based on the ID supplied
    # @param id ID of tax to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tax_by_id(id, opts = {})
      delete_tax_by_id_with_http_info(id, opts)
      return nil
    end

    # 
    # deletes a single tax based on the ID supplied
    # @param id ID of tax to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tax_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.delete_tax_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.delete_tax_by_id"
      end
      # resource path
      local_var_path = "/taxes/{id}/".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TaxesApi#delete_tax_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns a tax based on a single ID
    # @param id ID of tax to fetch
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit max records to return
    # @return [InlineResponse2012]
    def get_tax_by_id(id, opts = {})
      data, _status_code, _headers = get_tax_by_id_with_http_info(id, opts)
      return data
    end

    # 
    # Returns a tax based on a single ID
    # @param id ID of tax to fetch
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit max records to return
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def get_tax_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_tax_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.get_tax_by_id"
      end
      # resource path
      local_var_path = "/taxes/{id}/".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_tax_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns all taxes from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :includes Include associated objects within response
    # @option opts [Integer] :limit max records to return
    # @option opts [Array<String>] :order_by Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60; 
    # @return [InlineResponse2002]
    def get_taxes(opts = {})
      data, _status_code, _headers = get_taxes_with_http_info(opts)
      return data
    end

    # 
    # Returns all taxes from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :includes Include associated objects within response
    # @option opts [Integer] :limit max records to return
    # @option opts [Array<String>] :order_by Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60; 
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def get_taxes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_taxes ..."
      end
      # resource path
      local_var_path = "/taxes"

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
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # update a single tax based on the ID supplied
    # @param id ID of tax to update
    # @param tax Tax to add to the store
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def update_tax_by_id(id, tax, opts = {})
      data, _status_code, _headers = update_tax_by_id_with_http_info(id, tax, opts)
      return data
    end

    # 
    # update a single tax based on the ID supplied
    # @param id ID of tax to update
    # @param tax Tax to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def update_tax_by_id_with_http_info(id, tax, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_tax_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.update_tax_by_id"
      end
      # verify the required parameter 'tax' is set
      if @api_client.config.client_side_validation && tax.nil?
        fail ArgumentError, "Missing the required parameter 'tax' when calling TaxesApi.update_tax_by_id"
      end
      # resource path
      local_var_path = "/taxes/{id}/".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(tax)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_tax_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # update a single tax based on the ID supplied
    # @param id ID of tax to update
    # @param tax Tax to add to the store
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def update_tax_by_id_0(id, tax, opts = {})
      data, _status_code, _headers = update_tax_by_id_0_with_http_info(id, tax, opts)
      return data
    end

    # 
    # update a single tax based on the ID supplied
    # @param id ID of tax to update
    # @param tax Tax to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def update_tax_by_id_0_with_http_info(id, tax, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_tax_by_id_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.update_tax_by_id_0"
      end
      # verify the required parameter 'tax' is set
      if @api_client.config.client_side_validation && tax.nil?
        fail ArgumentError, "Missing the required parameter 'tax' when calling TaxesApi.update_tax_by_id_0"
      end
      # resource path
      local_var_path = "/taxes/{id}/".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(tax)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_tax_by_id_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end