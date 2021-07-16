///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use apiAddUserRequestDescriptor instead')
const ApiAddUserRequest$json = const {
  '1': 'ApiAddUserRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `ApiAddUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiAddUserRequestDescriptor = $convert.base64Decode('ChFBcGlBZGRVc2VyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFdG9rZW4YAyABKAlSBXRva2Vu');
@$core.Deprecated('Use apiAddUserReplyDescriptor instead')
const ApiAddUserReply$json = const {
  '1': 'ApiAddUserReply',
  '2': const [
    const {'1': 'isAdded', '3': 1, '4': 1, '5': 8, '10': 'isAdded'},
  ],
};

/// Descriptor for `ApiAddUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiAddUserReplyDescriptor = $convert.base64Decode('Cg9BcGlBZGRVc2VyUmVwbHkSGAoHaXNBZGRlZBgBIAEoCFIHaXNBZGRlZA==');
@$core.Deprecated('Use apiGetUserRequestDescriptor instead')
const ApiGetUserRequest$json = const {
  '1': 'ApiGetUserRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `ApiGetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetUserRequestDescriptor = $convert.base64Decode('ChFBcGlHZXRVc2VyUmVxdWVzdBISCgRndWlkGAEgASgJUgRndWlk');
@$core.Deprecated('Use apiGetUserReplyDescriptor instead')
const ApiGetUserReply$json = const {
  '1': 'ApiGetUserReply',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'guid', '3': 2, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `ApiGetUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetUserReplyDescriptor = $convert.base64Decode('Cg9BcGlHZXRVc2VyUmVwbHkSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRndWlkGAIgASgJUgRndWlk');
@$core.Deprecated('Use apiGetUsersRequestDescriptor instead')
const ApiGetUsersRequest$json = const {
  '1': 'ApiGetUsersRequest',
  '2': const [
    const {'1': 'restriction', '3': 1, '4': 1, '5': 9, '10': 'restriction'},
  ],
};

/// Descriptor for `ApiGetUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetUsersRequestDescriptor = $convert.base64Decode('ChJBcGlHZXRVc2Vyc1JlcXVlc3QSIAoLcmVzdHJpY3Rpb24YASABKAlSC3Jlc3RyaWN0aW9u');
@$core.Deprecated('Use apiGetUsersReplyDescriptor instead')
const ApiGetUsersReply$json = const {
  '1': 'ApiGetUsersReply',
  '2': const [
    const {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
  ],
};

/// Descriptor for `ApiGetUsersReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetUsersReplyDescriptor = $convert.base64Decode('ChBBcGlHZXRVc2Vyc1JlcGx5EhQKBW5hbWVzGAEgAygJUgVuYW1lcw==');
@$core.Deprecated('Use apiGetLastMessageRequestDescriptor instead')
const ApiGetLastMessageRequest$json = const {
  '1': 'ApiGetLastMessageRequest',
  '2': const [
    const {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
  ],
};

/// Descriptor for `ApiGetLastMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetLastMessageRequestDescriptor = $convert.base64Decode('ChhBcGlHZXRMYXN0TWVzc2FnZVJlcXVlc3QSEgoEZ3VpZBgBIAEoCVIEZ3VpZA==');
@$core.Deprecated('Use apiGetLastMessagesReplyDescriptor instead')
const ApiGetLastMessagesReply$json = const {
  '1': 'ApiGetLastMessagesReply',
  '2': const [
    const {'1': 'forGuid', '3': 1, '4': 1, '5': 9, '10': 'forGuid'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `ApiGetLastMessagesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiGetLastMessagesReplyDescriptor = $convert.base64Decode('ChdBcGlHZXRMYXN0TWVzc2FnZXNSZXBseRIYCgdmb3JHdWlkGAEgASgJUgdmb3JHdWlkEhAKA21zZxgCIAEoCVIDbXNn');
@$core.Deprecated('Use apiSendMessageRequestDescriptor instead')
const ApiSendMessageRequest$json = const {
  '1': 'ApiSendMessageRequest',
  '2': const [
    const {'1': 'forGuid', '3': 1, '4': 1, '5': 9, '10': 'forGuid'},
    const {'1': 'fromGuid', '3': 2, '4': 1, '5': 9, '10': 'fromGuid'},
    const {'1': 'msg', '3': 3, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `ApiSendMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSendMessageRequestDescriptor = $convert.base64Decode('ChVBcGlTZW5kTWVzc2FnZVJlcXVlc3QSGAoHZm9yR3VpZBgBIAEoCVIHZm9yR3VpZBIaCghmcm9tR3VpZBgCIAEoCVIIZnJvbUd1aWQSEAoDbXNnGAMgASgJUgNtc2c=');
@$core.Deprecated('Use apiSendMessageReplyDescriptor instead')
const ApiSendMessageReply$json = const {
  '1': 'ApiSendMessageReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ApiSendMessageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSendMessageReplyDescriptor = $convert.base64Decode('ChNBcGlTZW5kTWVzc2FnZVJlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
