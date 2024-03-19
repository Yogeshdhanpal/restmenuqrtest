import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCateDataCall {
  static Future<ApiCallResponse> call({
    List<String>? cateNameList,
    List<String>? categoryPhotoList,
    List<int>? docidList,
  }) async {
    final cateName = _serializeList(cateNameList);
    final categoryPhoto = _serializeList(categoryPhotoList);
    final docid = _serializeList(docidList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Cate Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/658d5aea779ffdf8d89b/documents',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.0',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'CateName': cateName,
        'CategoryPhoto': categoryPhoto,
        'Docid': docid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? getCateName(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].CateName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? getCatePhoto(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].CategoryPhoto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? getCateDocuments(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].Docid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCatePhotoFileCall {
  static Future<ApiCallResponse> call({
    List<int>? fileIdList,
    String? fileUrl = '',
  }) async {
    final fileId = _serializeList(fileIdList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Cate Photo file',
      apiUrl: 'https://tbwss.in/v1/storage/buckets/658d5bf1061abb716090/files',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.0',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'fileId': fileId,
        'fileUrl': fileUrl,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? catePhotoName(dynamic response) => (getJsonField(
        response,
        r'''$.files[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetStaffCategoryDataCall {
  static Future<ApiCallResponse> call({
    List<String>? staffCategoryNameList,
  }) async {
    final staffCategoryName = _serializeList(staffCategoryNameList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Staff Category Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/659fe1f64ed082938211/documents',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.0',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'StaffCategoryName': staffCategoryName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? getStaffCateDocuments(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      ) as List?;
  static String? getStaffCateName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].StaffCategoryName''',
      ));
}

class GetTablesDataCall {
  static Future<ApiCallResponse> call({
    String? tableName = '',
    int? seaterCapacity,
    String? tablePhoto = '',
    String? tableQR = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Tables Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/659e9612e33ddaffe2f3/documents',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.0',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'TableName': tableName,
        'SeaterCapacity': seaterCapacity,
        'TablePhoto': tablePhoto,
        'TableQR': tableQR,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? getTableName(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].TableName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? getSeaterCapacity(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].SeaterCapacity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? getTablePhoto(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].TablePhoto''',
        true,
      ) as List?;
  static List? getTableQR(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].TableQR''',
        true,
      ) as List?;
  static List? getTableDocuments(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      ) as List?;
}

class GetItemDataCall {
  static Future<ApiCallResponse> call({
    List<String>? itemNameList,
    String? itemPhoto = '',
    List<String>? itemDescriptionList,
    List<String>? itemCategoryList,
    List<int>? itemPriceList,
    List<bool>? itemActiveList,
    List<bool>? itemVorNVList,
  }) async {
    final itemName = _serializeList(itemNameList);
    final itemDescription = _serializeList(itemDescriptionList);
    final itemCategory = _serializeList(itemCategoryList);
    final itemPrice = _serializeList(itemPriceList);
    final itemActive = _serializeList(itemActiveList);
    final itemVorNV = _serializeList(itemVorNVList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Item Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/65901e9b5c6e0e6bdb24/documents',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.0',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'ItemName': itemName,
        'ItemPhoto': itemPhoto,
        'ItemDescription': itemDescription,
        'ItemCategory': itemCategory,
        'ItemPrice': itemPrice,
        'ItemVorNV': itemVorNV,
        'ItemActive': itemActive,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? getItemDocuments(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      ) as List?;
  static List<String>? getItemCategory(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].ItemCategory''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? getItemName(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].ItemName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? getItemDescription(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].ItemDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? getItemPhoto(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].ItemPhoto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? getItemPrice(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].ItemPrice''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<bool>? getItemActive(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].Active''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? getItemVorNV(dynamic response) => (getJsonField(
        response,
        r'''$.documents[:].ItemVorNV''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class GetStaffDetailsDataCall {
  static Future<ApiCallResponse> call({
    String? staffName = '',
    String? staffCategory = '',
    int? staffPhone,
    String? staffAddress = '',
    String? staffPhoto = '',
    int? staffAadhar,
    String? staffAddressProof = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Staff Details Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/659fe231338129f89406/documents',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.0',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'StaffCategory': staffCategory,
        'StaffName': staffName,
        'StaffPhone': staffPhone,
        'StaffAddress': staffAddress,
        'StaffAadhar': staffAadhar,
        '\tStaffPhoto': staffPhoto,
        'StaffAddressProof': staffAddressProof,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? getStaffDetailsDocuments(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      ) as List?;
  static String? getStaffCategory(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].StaffCategory''',
      ));
  static String? getStaffName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].StaffName''',
      ));
  static int? getStaffPhone(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.documents[:].StaffPhone''',
      ));
  static String? getStaffAddress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].StaffAddress''',
      ));
  static int? getStaffAadhar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.documents[:].StaffAadhar''',
      ));
  static dynamic getStaffPhoto(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].StaffPhoto''',
      );
  static dynamic getStaffAddressProof(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].StaffAddressProof''',
      );
}

class PostItemDataCall {
  static Future<ApiCallResponse> call({
    int? poDocumentId = 0101010101,
    String? poItemCategory = 'empty',
    String? poItemName = 'empty',
    String? poItemDescription = 'empty',
    int? poItemPrice = 99,
    bool? active = true,
    bool? poItemVorNV,
  }) async {
    final ffApiRequestBody = '''
{
  "documentId": "$poDocumentId",
  "data": {
    "ItemCategory": "$poItemCategory",
    "ItemName": "$poItemName",
    "ItemDescription": "$poItemDescription",
    "ItemPrice": "$poItemPrice",
    "Active": $active,
    "ItemVorNV": $poItemVorNV
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Item Data ',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/65901e9b5c6e0e6bdb24/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? poItemCategory(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ItemCategory''',
      ));
  static String? poItemName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ItemName''',
      ));
  static String? poItemDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ItemDescription''',
      ));
  static String? poItemPrice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ItemPrice''',
      ));
  static bool? poItemActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Active''',
      ));
  static bool? poItemVorNV(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ItemVorNV''',
      ));
}

class PostStaffDetailsDataCall {
  static Future<ApiCallResponse> call({
    int? poDocumentId = 0101010101,
    String? poStaffCategory = 'empty',
    String? poStaffName = 'empty',
    int? poStaffPhone,
    String? poStaffAddress = '',
    int? poStaffAadhar,
  }) async {
    final ffApiRequestBody = '''
{
  "documentId": "$poDocumentId",
  "data": {
    "StaffCategory": "$poStaffCategory",
    "StaffName": "$poStaffName",
    "StaffPhone": $poStaffPhone,
    "StaffAddress": "$poStaffAddress",
    "StaffAadhar": $poStaffAadhar
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Staff Details Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/659fe231338129f89406/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? poStaffCategory(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.StaffCategory''',
      ));
  static String? poStaffName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.StaffName''',
      ));
  static int? poStaffPhone(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.StaffPhone''',
      ));
  static String? poStaffAddress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.StaffAddress''',
      ));
  static int? poStaffAadhar(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.StaffAadhar''',
      ));
}

class PostCateDataCall {
  static Future<ApiCallResponse> call({
    int? poDocumentId = 0101010101,
    String? poCateName = 'empty',
    String? poDocid = 'emptyDocid',
  }) async {
    final ffApiRequestBody = '''
{
  "documentId": "$poDocumentId",
  "data": {
    "CateName": "$poCateName",
    "Docid": "$poDocid"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Cate Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/658d5aea779ffdf8d89b/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? poCateName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.CateName''',
      ));
}

class DeleteCatePhotoCall {
  static Future<ApiCallResponse> call({
    String? upCateName = 'empty',
    String? id = '',
    String? upCatePhoto = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Cate Photo',
      apiUrl:
          'https://tbwss.in/v1/storage/buckets/658d5bf1061abb716090/files/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'name': upCateName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? upCateName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.CateName''',
      ));
}

class PostStaffCategoryDataCall {
  static Future<ApiCallResponse> call({
    int? poDocumentId = 0101010101,
    String? poStaffCategoryName = 'empty',
  }) async {
    final ffApiRequestBody = '''
{
  "documentId": "$poDocumentId",
  "data": {
    "StaffCategoryName": "$poStaffCategoryName"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Staff Category Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/659fe1f64ed082938211/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? poStaffCategoryName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.StaffCategoryName''',
      ));
}

class PostTableDataCall {
  static Future<ApiCallResponse> call({
    int? poDocumentId = 0101010101,
    String? poTableName = 'empty',
    int? poTableSeaterCapacity = 4,
  }) async {
    final ffApiRequestBody = '''
{
  "documentId": "$poDocumentId",
  "data": {
    "TableName": "$poTableName",
    "SeaterCapacity": $poTableSeaterCapacity
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Table Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/659e9612e33ddaffe2f3/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? poTableName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.TableName''',
      ));
  static int? poSeaterCapacity(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.SeaterCapacity''',
      ));
}

class PostTableOrdersDataCall {
  static Future<ApiCallResponse> call({
    String? waiterName = 'empty',
    int? tableNumber = 16,
    String? itemName = 'empty',
    int? itemPrice = 99,
    int? qty = 1,
    double? subTotal = 99,
    bool? tableActive,
    int? podocumentId = 10101010101,
    String? dateTime = '',
  }) async {
    final ffApiRequestBody = '''
{
  "documentId": "$podocumentId",
  "data": {
    "WaiterName": "$waiterName",
    "TableNumber": $tableNumber,
    "ItemName": "$itemName",
    "ItemPrice": $itemPrice,
    "Qty": $qty,
    "SubTotal": $subTotal,
    "TableActive": $tableActive,
    "DateTime": "$dateTime"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Table Orders Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/65aa98a80ab9a7524588/documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTableOrdersDataCall {
  static Future<ApiCallResponse> call({
    String? waiterName = 'empty',
    int? tableNumber = 16,
    String? itemName = 'empty',
    int? itemPrice = 99,
    int? qty = 1,
    double? subTotal = 99,
    bool? tableActive,
    String? dateTime = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Table Orders Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/65aa98a80ab9a7524588/documents',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'WaiterName': waiterName,
        'TableNumber': tableNumber,
        'ItemName': itemName,
        'ItemPrice': itemPrice,
        'Qty': qty,
        'SubTotal': subTotal,
        'TableActive': tableActive,
        'DateTime': dateTime,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? getTableOrdersDocuments(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      ) as List?;
  static String? getTableOrdersWaiterName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].WaiterName''',
      ));
  static int? getTableOrdersTableNumber(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.documents[:].TableNumber''',
      ));
  static String? getTableOrdersItemName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].ItemName''',
      ));
  static int? getTableOrdersItemPrice(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.documents[:].ItemPrice''',
      ));
  static int? getTableOrdersQty(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.documents[:].Qty''',
      ));
  static int? getTableOrdersSubTotal(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.documents[:].SubTotal''',
      ));
  static String? getTableOrdersDateTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.documents[:].DateTime''',
      ));
  static bool? getTableOrdersTableActive(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.documents[:].TableActive''',
      ));
}

class PostItemPhotoCall {
  static Future<ApiCallResponse> call({
    int? fileId,
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Item Photo',
      apiUrl: 'https://tbwss.in/v1/storage/buckets/6592af6537507ae73e5c/files',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'fileId': fileId,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostCategoryPhotoCall {
  static Future<ApiCallResponse> call({
    String? fileId = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Category Photo',
      apiUrl: 'https://tbwss.in/v1/storage/buckets/658d5bf1061abb716090/files',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'fileId': fileId,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCateDataCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Cate Data',
      apiUrl:
          'https://tbwss.in/v1/databases/658d3ab467a8aedda0be/collections/658d5aea779ffdf8d89b/documents/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostTablePhotoCall {
  static Future<ApiCallResponse> call({
    int? fileId,
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Table Photo',
      apiUrl: 'https://tbwss.in/v1/storage/buckets/659e9d0a38ee4d228043/files',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'fileId': fileId,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostStaffPhotoCall {
  static Future<ApiCallResponse> call({
    int? fileId,
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Staff Photo',
      apiUrl: 'https://tbwss.in/v1/storage/buckets/65a2a4d189e051081bb8/files',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'fileId': fileId,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostStaffAddressProofCall {
  static Future<ApiCallResponse> call({
    int? fileId,
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Staff Address proof',
      apiUrl: 'https://tbwss.in/v1/storage/buckets/65a2a545acf8589b138d/files',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Appwrite-Response-Format': '1.4.13',
        'X-Appwrite-Project': '658d3833eb03853793fc',
        'X-Appwrite-Key':
            '91ed6aa7aa707b372997b24234a0e1b94f7d80ad1d54550b4a1f6026aaf4d3b180f49fa8838dd0c8af4c9d8d342ad1912ade3f05ab72af0394fb3e729cc8344f804d9d3bfddcccf37d5026957173f6778eada8c8e940f4f55868080020f35b535e8f404649f8bb7b04cd5c315007c71b042e33b0809eba494034dbcc938a1f45',
      },
      params: {
        'fileId': fileId,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
