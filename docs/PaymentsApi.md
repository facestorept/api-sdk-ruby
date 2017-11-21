# SwaggerClient::PaymentsApi

All URIs are relative to *https://api.facestore.local/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payment_by_id**](PaymentsApi.md#get_payment_by_id) | **GET** /payments/{id}/ | 
[**get_payments**](PaymentsApi.md#get_payments) | **GET** /payments | 


# **get_payment_by_id**
> InlineResponse2005 get_payment_by_id(id)



Returns all payments from the system that the user has access to 

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

api_instance = SwaggerClient::PaymentsApi.new

id = 789 # Integer | ID of payment


begin
  result = api_instance.get_payment_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of payment | 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payments**
> InlineResponse2004 get_payments(opts)



Returns all payments from the system that the user has access to 

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

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  includes: ["includes_example"], # Array<String> | Include associated objects within response
  limit: 56 # Integer | max records to return
  order_by: ["order_by_example"] # Array<String> | Specify the field to be sorted, examples:  - `?order_by=id|desc` - `?order_by=updated_at|desc,position|asc` 
}

begin
  result = api_instance.get_payments(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includes** | [**Array&lt;String&gt;**](String.md)| Include associated objects within response | [optional] 
 **limit** | **Integer**| max records to return | [optional] 
 **order_by** | [**Array&lt;String&gt;**](String.md)| Specify the field to be sorted, examples:  - &#x60;?order_by&#x3D;id|desc&#x60; - &#x60;?order_by&#x3D;updated_at|desc,position|asc&#x60;  | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



