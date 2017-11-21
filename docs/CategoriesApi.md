# SwaggerClient::CategoriesApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_categories**](CategoriesApi.md#add_categories) | **POST** /categories | 
[**delete_category_by_id**](CategoriesApi.md#delete_category_by_id) | **DELETE** /categories/{id}/ | 
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /categories | 
[**get_category_by_id**](CategoriesApi.md#get_category_by_id) | **GET** /categories/{id}/ | 
[**update_category_by_id**](CategoriesApi.md#update_category_by_id) | **PUT** /categories/{id}/ | 


# **add_categories**
> InlineResponse2011 add_categories(category)



Creates a new category in the store.

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

api_instance = SwaggerClient::CategoriesApi.new

category = SwaggerClient::Category.new # Category | Category to add to the store


begin
  result = api_instance.add_categories(category)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->add_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**Category**](Category.md)| Category to add to the store | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_category_by_id**
> delete_category_by_id(id)



deletes a single category based on the ID supplied

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

api_instance = SwaggerClient::CategoriesApi.new

id = 789 # Integer | ID of category to delete


begin
  api_instance.delete_category_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->delete_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of category to delete | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_categories**
> InlineResponse2001 get_categories(opts)



Returns all categories from the system that the user has access to  ### Includes You can give the following values on includes parameter: `routes, products` 

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

api_instance = SwaggerClient::CategoriesApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_categories(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_category_by_id**
> InlineResponse2011 get_category_by_id(id, opts)



Returns a category based on a single ID  ### Includes You can give the following values on includes parameter: `routes, products` 

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

api_instance = SwaggerClient::CategoriesApi.new

id = 789 # Integer | ID of category to fetch

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
}

begin
  result = api_instance.get_category_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->get_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of category to fetch | 
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category_by_id**
> update_category_by_id(id, category)



update a single category based on the ID supplied

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

api_instance = SwaggerClient::CategoriesApi.new

id = 789 # Integer | ID of category to update

category = nil # Object | Category to update in store


begin
  api_instance.update_category_by_id(id, category)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoriesApi->update_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of category to update | 
 **category** | **Object**| Category to update in store | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



