# SwaggerClient::TaxesApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_taxes**](TaxesApi.md#add_taxes) | **POST** /taxes | 
[**delete_tax_by_id**](TaxesApi.md#delete_tax_by_id) | **DELETE** /taxes/{id}/ | 
[**get_tax_by_id**](TaxesApi.md#get_tax_by_id) | **GET** /taxes/{id}/ | 
[**get_taxes**](TaxesApi.md#get_taxes) | **GET** /taxes | 
[**update_tax_by_id**](TaxesApi.md#update_tax_by_id) | **PUT** /taxes/{id}/ | 
[**update_tax_by_id_0**](TaxesApi.md#update_tax_by_id_0) | **PATCH** /taxes/{id}/ | 


# **add_taxes**
> InlineResponse2012 add_taxes(tax)



Creates a new tax in the store.

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

api_instance = SwaggerClient::TaxesApi.new

tax = SwaggerClient::Tax.new # Tax | Tax to add to the store


begin
  result = api_instance.add_taxes(tax)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->add_taxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax** | [**Tax**](Tax.md)| Tax to add to the store | 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tax_by_id**
> delete_tax_by_id(id)



deletes a single tax based on the ID supplied

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

api_instance = SwaggerClient::TaxesApi.new

id = 789 # Integer | ID of tax to delete


begin
  api_instance.delete_tax_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->delete_tax_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of tax to delete | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tax_by_id**
> InlineResponse2012 get_tax_by_id(id, opts)



Returns a tax based on a single ID

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

api_instance = SwaggerClient::TaxesApi.new

id = 789 # Integer | ID of tax to fetch

opts = { 
  limit: 56 # Integer | max records to return
}

begin
  result = api_instance.get_tax_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_tax_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of tax to fetch | 
 **limit** | **Integer**| max records to return | [optional] 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_taxes**
> InlineResponse2002 get_taxes(opts)



Returns all taxes from the system that the user has access to

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

api_instance = SwaggerClient::TaxesApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_taxes(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->get_taxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tax_by_id**
> InlineResponse2012 update_tax_by_id(id, tax)



update a single tax based on the ID supplied

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

api_instance = SwaggerClient::TaxesApi.new

id = 789 # Integer | ID of tax to update

tax = SwaggerClient::Tax.new # Tax | Tax to add to the store


begin
  result = api_instance.update_tax_by_id(id, tax)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->update_tax_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of tax to update | 
 **tax** | [**Tax**](Tax.md)| Tax to add to the store | 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_tax_by_id_0**
> InlineResponse2012 update_tax_by_id_0(id, tax)



update a single tax based on the ID supplied

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

api_instance = SwaggerClient::TaxesApi.new

id = 789 # Integer | ID of tax to update

tax = SwaggerClient::Tax.new # Tax | Tax to add to the store


begin
  result = api_instance.update_tax_by_id_0(id, tax)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxesApi->update_tax_by_id_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of tax to update | 
 **tax** | [**Tax**](Tax.md)| Tax to add to the store | 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



