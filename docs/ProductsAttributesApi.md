# SwaggerClient::ProductsAttributesApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_products_attributes**](ProductsAttributesApi.md#add_products_attributes) | **POST** /attributes | 
[**delete_product_attribute_by_id**](ProductsAttributesApi.md#delete_product_attribute_by_id) | **DELETE** /attributes/{id}/ | 
[**get_product_attribute_by_id**](ProductsAttributesApi.md#get_product_attribute_by_id) | **GET** /attributes/{id}/ | 
[**get_products_attributes**](ProductsAttributesApi.md#get_products_attributes) | **GET** /attributes | 
[**update_product_attribute_by_id**](ProductsAttributesApi.md#update_product_attribute_by_id) | **PUT** /attributes/{id}/ | 


# **add_products_attributes**
> Array&lt;Attribute&gt; add_products_attributes(attribute)



Creates a new attribute of products in the store.

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

api_instance = SwaggerClient::ProductsAttributesApi.new

attribute = SwaggerClient::Attribute.new # Attribute | Attribute to add to the store


begin
  result = api_instance.add_products_attributes(attribute)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsAttributesApi->add_products_attributes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute** | [**Attribute**](Attribute.md)| Attribute to add to the store | 

### Return type

[**Array&lt;Attribute&gt;**](Attribute.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_product_attribute_by_id**
> delete_product_attribute_by_id(id)



deletes a single attribute of products based on the ID supplied

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

api_instance = SwaggerClient::ProductsAttributesApi.new

id = 789 # Integer | ID of attribute to delete


begin
  api_instance.delete_product_attribute_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsAttributesApi->delete_product_attribute_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of attribute to delete | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_product_attribute_by_id**
> Attribute get_product_attribute_by_id(id, opts)



Returns a attribute of products based on a single ID  ### Includes You can give the following values on includes parameter: `options` 

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

api_instance = SwaggerClient::ProductsAttributesApi.new

id = 789 # Integer | ID of attribute to fetch

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
}

begin
  result = api_instance.get_product_attribute_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsAttributesApi->get_product_attribute_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of attribute to fetch | 
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 

### Return type

[**Attribute**](Attribute.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_products_attributes**
> Array&lt;Attribute&gt; get_products_attributes(opts)



Returns all attributes of products from the system that the user has access to  ### Includes You can give the following values on includes parameter: `options` 

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

api_instance = SwaggerClient::ProductsAttributesApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_products_attributes(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsAttributesApi->get_products_attributes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**Array&lt;Attribute&gt;**](Attribute.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_product_attribute_by_id**
> Attribute update_product_attribute_by_id(id, product_attribute)



update a single attribute of products based on the ID supplied

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

api_instance = SwaggerClient::ProductsAttributesApi.new

id = 789 # Integer | ID of attribute to update

product_attribute = SwaggerClient::Attribute.new # Attribute | Attribute to add to the store


begin
  result = api_instance.update_product_attribute_by_id(id, product_attribute)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductsAttributesApi->update_product_attribute_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of attribute to update | 
 **product_attribute** | [**Attribute**](Attribute.md)| Attribute to add to the store | 

### Return type

[**Attribute**](Attribute.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



