# SwaggerClient::CustomersApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_customer_by_id**](CustomersApi.md#get_customer_by_id) | **GET** /customers/{id}/ | 
[**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | 


# **get_customer_by_id**
> Array&lt;Customer&gt; get_customer_by_id(id, opts)



Returns all customers from the system that the user has access to  ### Includes You can give the following values on includes parameter: `orders, groups` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['APIToken'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['APIToken'] = 'Bearer'
end

api_instance = SwaggerClient::CustomersApi.new

id = 789 # Integer | ID of customer

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
}

begin
  result = api_instance.get_customer_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomersApi->get_customer_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of customer | 
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 

### Return type

[**Array&lt;Customer&gt;**](Customer.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_customers**
> Array&lt;Customer&gt; get_customers(opts)



Returns all customers from the system that the user has access to  ### Includes You can give the following values on includes parameter: `orders, groups` 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['APIToken'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['APIToken'] = 'Bearer'
end

api_instance = SwaggerClient::CustomersApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_customers(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomersApi->get_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**Array&lt;Customer&gt;**](Customer.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



