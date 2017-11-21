# SwaggerClient::BrandsApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_brands**](BrandsApi.md#add_brands) | **POST** /brands | 
[**delete_brand_by_id**](BrandsApi.md#delete_brand_by_id) | **DELETE** /brands/{id}/ | 
[**get_brand_by_id**](BrandsApi.md#get_brand_by_id) | **GET** /brands/{id}/ | 
[**get_brands**](BrandsApi.md#get_brands) | **GET** /brands | 
[**update_category_by_id**](BrandsApi.md#update_category_by_id) | **PUT** /brands/{id}/ | 
[**update_category_by_id_0**](BrandsApi.md#update_category_by_id_0) | **PATCH** /brands/{id}/ | 


# **add_brands**
> InlineResponse201 add_brands(brand)



Creates a new brand in the store.

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

api_instance = SwaggerClient::BrandsApi.new

brand = SwaggerClient::Brand.new # Brand | Brand to add to the store


begin
  result = api_instance.add_brands(brand)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->add_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brand** | [**Brand**](Brand.md)| Brand to add to the store | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_brand_by_id**
> delete_brand_by_id(id)



Deletes a single brand based on the ID supplied

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

api_instance = SwaggerClient::BrandsApi.new

id = 789 # Integer | ID of brand to delete


begin
  api_instance.delete_brand_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->delete_brand_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of brand to delete | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brand_by_id**
> InlineResponse201 get_brand_by_id(id, opts)



Returns a brand based on a single ID  ### Includes You can give the following values on includea parameter: `routes, products` 

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

api_instance = SwaggerClient::BrandsApi.new

id = 789 # Integer | ID of brand to fetch

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
}

begin
  result = api_instance.get_brand_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brand_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of brand to fetch | 
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_brands**
> InlineResponse200 get_brands(opts)



Returns all brands from the system that the user has access to  ### Includes You can give the following values on includes parameter: `routes, products` 

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

api_instance = SwaggerClient::BrandsApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_brands(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->get_brands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category_by_id**
> update_category_by_id(id, brand)



Update a single brand based on the ID supplied

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

api_instance = SwaggerClient::BrandsApi.new

id = 789 # Integer | ID of brand to update

brand = nil # Object | Brand to update in store


begin
  api_instance.update_category_by_id(id, brand)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->update_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of brand to update | 
 **brand** | **Object**| Brand to update in store | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category_by_id_0**
> update_category_by_id_0(id, brand)



Update a single brand based on the ID supplied

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

api_instance = SwaggerClient::BrandsApi.new

id = 789 # Integer | ID of brand to update

brand = nil # Object | Brand to update in store


begin
  api_instance.update_category_by_id_0(id, brand)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrandsApi->update_category_by_id_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of brand to update | 
 **brand** | **Object**| Brand to update in store | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



