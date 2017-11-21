# SwaggerClient::ProductsApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product**](ProductsApi.md#add_product) | **POST** /products | 
[**delete_product_by_id**](ProductsApi.md#delete_product_by_id) | **DELETE** /products/{id}/ | 
[**get_product_by_id**](ProductsApi.md#get_product_by_id) | **GET** /products/{id}/ | 
[**get_products**](ProductsApi.md#get_products) | **GET** /products | 
[**update_product_by_id**](ProductsApi.md#update_product_by_id) | **PUT** /products/{id}/ | 
[**update_product_by_id_0**](ProductsApi.md#update_product_by_id_0) | **PATCH** /products/{id}/ | 


# **add_product**
> InlineResponse2014 add_product(product)



Creates a new product in the store.

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

api_instance = SwaggerClient::ProductsApi.new

product = SwaggerClient::Product.new # Product | Product to add to the store


begin
  result = api_instance.add_product(product)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->add_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | [**Product**](Product.md)| Product to add to the store | 

### Return type

[**InlineResponse2014**](InlineResponse2014.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_product_by_id**
> delete_product_by_id(id)



deletes a single product based on the ID supplied

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

api_instance = SwaggerClient::ProductsApi.new

id = 789 # Integer | ID of product to delete


begin
  api_instance.delete_product_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->delete_product_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product to delete | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_product_by_id**
> InlineResponse2014 get_product_by_id(id, opts)



Returns a product based on a single ID  ### Includes You can give the following values on includes parameter: `brands, categories, routes, stocks` 

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

api_instance = SwaggerClient::ProductsApi.new

id = 789 # Integer | ID of product to fetch

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
}

begin
  result = api_instance.get_product_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->get_product_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product to fetch | 
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 

### Return type

[**InlineResponse2014**](InlineResponse2014.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_products**
> InlineResponse2006 get_products(opts)



Returns all products from the system that the user has access to  ### Includes You can give the following values on includes parameter: `brands, categories, routes, stocks` 

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

api_instance = SwaggerClient::ProductsApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_products(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->get_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_product_by_id**
> update_product_by_id(id, tax)



update a single product based on the ID supplied

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

api_instance = SwaggerClient::ProductsApi.new

id = 789 # Integer | ID of product to update

tax = SwaggerClient::Product.new # Product | Product to add to the store


begin
  api_instance.update_product_by_id(id, tax)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->update_product_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product to update | 
 **tax** | [**Product**](Product.md)| Product to add to the store | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_product_by_id_0**
> update_product_by_id_0(id, tax)



update a single product based on the ID supplied

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

api_instance = SwaggerClient::ProductsApi.new

id = 789 # Integer | ID of product to update

tax = SwaggerClient::Product.new # Product | Product to add to the store


begin
  api_instance.update_product_by_id_0(id, tax)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsApi->update_product_by_id_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product to update | 
 **tax** | [**Product**](Product.md)| Product to add to the store | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



