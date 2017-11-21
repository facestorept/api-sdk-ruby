# SwaggerClient::ShippingsApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_shipping**](ShippingsApi.md#add_shipping) | **POST** /shippings | 
[**delete_shipping_by_id**](ShippingsApi.md#delete_shipping_by_id) | **DELETE** /shippings/{id}/ | 
[**get_shipping_by_id**](ShippingsApi.md#get_shipping_by_id) | **GET** /shippings/{id}/ | 
[**get_shippings**](ShippingsApi.md#get_shippings) | **GET** /shippings | 
[**update_shipping_by_id**](ShippingsApi.md#update_shipping_by_id) | **PUT** /shippings/{id}/ | 
[**update_shipping_by_id_0**](ShippingsApi.md#update_shipping_by_id_0) | **PATCH** /shippings/{id}/ | 


# **add_shipping**
> InlineResponse2013 add_shipping(shipping)



Creates a new shipping in the store.

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

api_instance = SwaggerClient::ShippingsApi.new

shipping = SwaggerClient::Shipping.new # Shipping | Shipping to add to the store


begin
  result = api_instance.add_shipping(shipping)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShippingsApi->add_shipping: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping** | [**Shipping**](Shipping.md)| Shipping to add to the store | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_shipping_by_id**
> delete_shipping_by_id(id)



deletes a single shipping based on the ID supplied

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

api_instance = SwaggerClient::ShippingsApi.new

id = 789 # Integer | ID of shipping to delete


begin
  api_instance.delete_shipping_by_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShippingsApi->delete_shipping_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of shipping to delete | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shipping_by_id**
> InlineResponse2013 get_shipping_by_id(id, opts)



Returns a shipping based on a single ID

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

api_instance = SwaggerClient::ShippingsApi.new

id = 789 # Integer | ID of shipping to fetch

opts = { 
  limit: 56 # Integer | max records to return
}

begin
  result = api_instance.get_shipping_by_id(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShippingsApi->get_shipping_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of shipping to fetch | 
 **limit** | **Integer**| max records to return | [optional] 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shippings**
> InlineResponse2003 get_shippings(opts)



Returns all shippings from the system that the user has access to

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

api_instance = SwaggerClient::ShippingsApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_shippings(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShippingsApi->get_shippings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_by_id**
> InlineResponse2013 update_shipping_by_id(id, tax)



update a single shipping based on the ID supplied

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

api_instance = SwaggerClient::ShippingsApi.new

id = 789 # Integer | ID of shipping to update

tax = SwaggerClient::Shipping.new # Shipping | Shipping to update in store


begin
  result = api_instance.update_shipping_by_id(id, tax)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShippingsApi->update_shipping_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of shipping to update | 
 **tax** | [**Shipping**](Shipping.md)| Shipping to update in store | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shipping_by_id_0**
> InlineResponse2013 update_shipping_by_id_0(id, tax)



update a single shipping based on the ID supplied

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

api_instance = SwaggerClient::ShippingsApi.new

id = 789 # Integer | ID of shipping to update

tax = SwaggerClient::Shipping.new # Shipping | Shipping to update in store


begin
  result = api_instance.update_shipping_by_id_0(id, tax)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShippingsApi->update_shipping_by_id_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of shipping to update | 
 **tax** | [**Shipping**](Shipping.md)| Shipping to update in store | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



