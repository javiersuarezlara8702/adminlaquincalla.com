import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Product categories Group Code

class ProductCategoriesGroup {
  static String getBaseUrl() => 'https://jiksgqisqqkspbvqrggk.supabase.co';
  static Map<String, String> headers = {};
  static UpdateProductBooleanCall updateProductBooleanCall =
      UpdateProductBooleanCall();
  static RetrieveAProductCategoryCall retrieveAProductCategoryCall =
      RetrieveAProductCategoryCall();
  static ListAllProductCategoriesCall listAllProductCategoriesCall =
      ListAllProductCategoriesCall();
  static UpdateAProductCategoryCall updateAProductCategoryCall =
      UpdateAProductCategoryCall();
  static RetriveAProductCupCall retriveAProductCupCall =
      RetriveAProductCupCall();
}

class UpdateProductBooleanCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProductBoolean ',
      apiUrl: '$baseUrl/wp-json/wc/v3/products/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveAProductCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a product category',
      apiUrl: '$baseUrl/rest/v1/Products?id=eq.1&select=*',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? src(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image.src''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class ListAllProductCategoriesCall {
  Future<ApiCallResponse> call({
    String? perPage = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all product categories',
      apiUrl: '$baseUrl/rest/v1/Products?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {
        'per_page': perPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAProductCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "status": "<price>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a product category',
      apiUrl:
          '${baseUrl}products/$id?_fields=id,price,rating_count&currency=CUP&',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetriveAProductCupCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'retrive a product cup',
      apiUrl:
          '${baseUrl}products/$id?_fields=id,name,price,sale_price,regular_price, images,stock_quantity, stock_status,status,description,categories,related_ids,rating_count&currency=CUP&',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Product categories Group Code

class RetrieveAProductCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? consumerKey = 'ck_2ed55b27d1dbb2a1f18b404d18cf9c36da8aa6b2',
    String? consumerSecret = 'cs_8e81254a2b5831b0b80e672f3212570312be5192',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a Product',
      apiUrl: 'https://chocoalexo.com/wp-json/wc/v3/products/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic Y2tfMmVkNTViMjdkMWRiYjJhMWYxOGI0MDRkMThjZjljMzZkYThhYTZiMjpjc184ZTgxMjU0YTJiNTgzMWIwYjgwZTY3MmYzMjEyNTcwMzEyYmU1MTky',
      },
      params: {
        'id': id,
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAProductCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
    String? price = '',
    String? quanty = '',
    String? name = '',
    String? category = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "$id",
  "status": "$status",
  "category": "$category",
  "price": "$price",
  "quanty": "$quanty"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a product',
      apiUrl:
          'https://jiksgqisqqkspbvqrggk.supabase.co/rest/v1/Products?id=eq.$id',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAllOrdersCall {
  static Future<ApiCallResponse> call({
    String? include = '',
    String? perPage = '',
    int? offset = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'List all orders',
      apiUrl:
          'https://chocoalexo.com/wp-json/wc/v3/orders?_fields=id,number,status,currency,date_created,date_modified,shipping_total,total,customer_id,billing,shipping,payment_method,payment_method_title,customer_note,created_via,number,meta_data,line_items',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic Y2tfMmVkNTViMjdkMWRiYjJhMWYxOGI0MDRkMThjZjljMzZkYThhYTZiMjpjc184ZTgxMjU0YTJiNTgzMWIwYjgwZTY3MmYzMjEyNTcwMzEyYmU1MTky',
      },
      params: {
        'include': include,
        'per_page': perPage,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListallProductCall {
  static Future<ApiCallResponse> call({
    String? category = '',
    String? search = '',
    String? include = '',
    String? status = 'any',
    String? perPage = '100',
    String? consumerKey = 'ck_2ed55b27d1dbb2a1f18b404d18cf9c36da8aa6b2',
    String? consumerSecret = 'cs_8e81254a2b5831b0b80e672f3212570312be5192',
    int? offset = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listallProduct',
      apiUrl: 'https://chocoalexo.com/wp-json/wc/v3/products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic Y2tfMmVkNTViMjdkMWRiYjJhMWYxOGI0MDRkMThjZjljMzZkYThhYTZiMjpjc184ZTgxMjU0YTJiNTgzMWIwYjgwZTY3MmYzMjEyNTcwMzEyYmU1MTky',
      },
      params: {
        'category': category,
        'search': search,
        'include': include,
        'status': status,
        'per_page': perPage,
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'search',
      apiUrl:
          'https://jiksgqisqqkspbvqrggk.supabase.co/rest/v1/Products?name=ilike.*$search*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetriveCategoryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'retriveCategory',
      apiUrl:
          'https://jiksgqisqqkspbvqrggk.supabase.co/rest/v1/category?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListOfWorkerRowsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'list of worker rows ',
      apiUrl:
          'https://jiksgqisqqkspbvqrggk.supabase.co/rest/v1/bolsa_de_empleo?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
