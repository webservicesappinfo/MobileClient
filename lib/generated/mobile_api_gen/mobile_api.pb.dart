///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ApiAddUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiAddUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  ApiAddUserRequest._() : super();
  factory ApiAddUserRequest({
    $core.String? guid,
    $core.String? name,
    $core.String? token,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    if (name != null) {
      _result.name = name;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory ApiAddUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiAddUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiAddUserRequest clone() => ApiAddUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiAddUserRequest copyWith(void Function(ApiAddUserRequest) updates) => super.copyWith((message) => updates(message as ApiAddUserRequest)) as ApiAddUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiAddUserRequest create() => ApiAddUserRequest._();
  ApiAddUserRequest createEmptyInstance() => create();
  static $pb.PbList<ApiAddUserRequest> createRepeated() => $pb.PbList<ApiAddUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiAddUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiAddUserRequest>(create);
  static ApiAddUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class ApiAddUserReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiAddUserReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAdded', protoName: 'isAdded')
    ..hasRequiredFields = false
  ;

  ApiAddUserReply._() : super();
  factory ApiAddUserReply({
    $core.bool? isAdded,
  }) {
    final _result = create();
    if (isAdded != null) {
      _result.isAdded = isAdded;
    }
    return _result;
  }
  factory ApiAddUserReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiAddUserReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiAddUserReply clone() => ApiAddUserReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiAddUserReply copyWith(void Function(ApiAddUserReply) updates) => super.copyWith((message) => updates(message as ApiAddUserReply)) as ApiAddUserReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiAddUserReply create() => ApiAddUserReply._();
  ApiAddUserReply createEmptyInstance() => create();
  static $pb.PbList<ApiAddUserReply> createRepeated() => $pb.PbList<ApiAddUserReply>();
  @$core.pragma('dart2js:noInline')
  static ApiAddUserReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiAddUserReply>(create);
  static ApiAddUserReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isAdded => $_getBF(0);
  @$pb.TagNumber(1)
  set isAdded($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsAdded() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsAdded() => clearField(1);
}

class ApiGetUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  ApiGetUserRequest._() : super();
  factory ApiGetUserRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory ApiGetUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUserRequest clone() => ApiGetUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUserRequest copyWith(void Function(ApiGetUserRequest) updates) => super.copyWith((message) => updates(message as ApiGetUserRequest)) as ApiGetUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUserRequest create() => ApiGetUserRequest._();
  ApiGetUserRequest createEmptyInstance() => create();
  static $pb.PbList<ApiGetUserRequest> createRepeated() => $pb.PbList<ApiGetUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUserRequest>(create);
  static ApiGetUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class ApiGetUserReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUserReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  ApiGetUserReply._() : super();
  factory ApiGetUserReply({
    $core.String? name,
    $core.String? guid,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory ApiGetUserReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUserReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUserReply clone() => ApiGetUserReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUserReply copyWith(void Function(ApiGetUserReply) updates) => super.copyWith((message) => updates(message as ApiGetUserReply)) as ApiGetUserReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUserReply create() => ApiGetUserReply._();
  ApiGetUserReply createEmptyInstance() => create();
  static $pb.PbList<ApiGetUserReply> createRepeated() => $pb.PbList<ApiGetUserReply>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUserReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUserReply>(create);
  static ApiGetUserReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get guid => $_getSZ(1);
  @$pb.TagNumber(2)
  set guid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearGuid() => clearField(2);
}

class ApiGetUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUsersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restriction')
    ..hasRequiredFields = false
  ;

  ApiGetUsersRequest._() : super();
  factory ApiGetUsersRequest({
    $core.String? restriction,
  }) {
    final _result = create();
    if (restriction != null) {
      _result.restriction = restriction;
    }
    return _result;
  }
  factory ApiGetUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUsersRequest clone() => ApiGetUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUsersRequest copyWith(void Function(ApiGetUsersRequest) updates) => super.copyWith((message) => updates(message as ApiGetUsersRequest)) as ApiGetUsersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersRequest create() => ApiGetUsersRequest._();
  ApiGetUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ApiGetUsersRequest> createRepeated() => $pb.PbList<ApiGetUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUsersRequest>(create);
  static ApiGetUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get restriction => $_getSZ(0);
  @$pb.TagNumber(1)
  set restriction($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestriction() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestriction() => clearField(1);
}

class ApiGetUsersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetUsersReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'names')
    ..hasRequiredFields = false
  ;

  ApiGetUsersReply._() : super();
  factory ApiGetUsersReply({
    $core.Iterable<$core.String>? names,
  }) {
    final _result = create();
    if (names != null) {
      _result.names.addAll(names);
    }
    return _result;
  }
  factory ApiGetUsersReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetUsersReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetUsersReply clone() => ApiGetUsersReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetUsersReply copyWith(void Function(ApiGetUsersReply) updates) => super.copyWith((message) => updates(message as ApiGetUsersReply)) as ApiGetUsersReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersReply create() => ApiGetUsersReply._();
  ApiGetUsersReply createEmptyInstance() => create();
  static $pb.PbList<ApiGetUsersReply> createRepeated() => $pb.PbList<ApiGetUsersReply>();
  @$core.pragma('dart2js:noInline')
  static ApiGetUsersReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetUsersReply>(create);
  static ApiGetUsersReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get names => $_getList(0);
}

class ApiGetLastMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetLastMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guid')
    ..hasRequiredFields = false
  ;

  ApiGetLastMessageRequest._() : super();
  factory ApiGetLastMessageRequest({
    $core.String? guid,
  }) {
    final _result = create();
    if (guid != null) {
      _result.guid = guid;
    }
    return _result;
  }
  factory ApiGetLastMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetLastMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetLastMessageRequest clone() => ApiGetLastMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetLastMessageRequest copyWith(void Function(ApiGetLastMessageRequest) updates) => super.copyWith((message) => updates(message as ApiGetLastMessageRequest)) as ApiGetLastMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetLastMessageRequest create() => ApiGetLastMessageRequest._();
  ApiGetLastMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ApiGetLastMessageRequest> createRepeated() => $pb.PbList<ApiGetLastMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiGetLastMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetLastMessageRequest>(create);
  static ApiGetLastMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => clearField(1);
}

class ApiGetLastMessagesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiGetLastMessagesReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  ApiGetLastMessagesReply._() : super();
  factory ApiGetLastMessagesReply({
    $core.String? forGuid,
    $core.String? msg,
  }) {
    final _result = create();
    if (forGuid != null) {
      _result.forGuid = forGuid;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory ApiGetLastMessagesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiGetLastMessagesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiGetLastMessagesReply clone() => ApiGetLastMessagesReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiGetLastMessagesReply copyWith(void Function(ApiGetLastMessagesReply) updates) => super.copyWith((message) => updates(message as ApiGetLastMessagesReply)) as ApiGetLastMessagesReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiGetLastMessagesReply create() => ApiGetLastMessagesReply._();
  ApiGetLastMessagesReply createEmptyInstance() => create();
  static $pb.PbList<ApiGetLastMessagesReply> createRepeated() => $pb.PbList<ApiGetLastMessagesReply>();
  @$core.pragma('dart2js:noInline')
  static ApiGetLastMessagesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiGetLastMessagesReply>(create);
  static ApiGetLastMessagesReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set forGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearForGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class ApiSendMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiSendMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forGuid', protoName: 'forGuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromGuid', protoName: 'fromGuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  ApiSendMessageRequest._() : super();
  factory ApiSendMessageRequest({
    $core.String? forGuid,
    $core.String? fromGuid,
    $core.String? msg,
  }) {
    final _result = create();
    if (forGuid != null) {
      _result.forGuid = forGuid;
    }
    if (fromGuid != null) {
      _result.fromGuid = fromGuid;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory ApiSendMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSendMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSendMessageRequest clone() => ApiSendMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSendMessageRequest copyWith(void Function(ApiSendMessageRequest) updates) => super.copyWith((message) => updates(message as ApiSendMessageRequest)) as ApiSendMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageRequest create() => ApiSendMessageRequest._();
  ApiSendMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ApiSendMessageRequest> createRepeated() => $pb.PbList<ApiSendMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSendMessageRequest>(create);
  static ApiSendMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forGuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set forGuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearForGuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromGuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromGuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromGuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromGuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msg => $_getSZ(2);
  @$pb.TagNumber(3)
  set msg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);
}

class ApiSendMessageReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApiSendMessageReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'mobileApi'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  ApiSendMessageReply._() : super();
  factory ApiSendMessageReply({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory ApiSendMessageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSendMessageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSendMessageReply clone() => ApiSendMessageReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSendMessageReply copyWith(void Function(ApiSendMessageReply) updates) => super.copyWith((message) => updates(message as ApiSendMessageReply)) as ApiSendMessageReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageReply create() => ApiSendMessageReply._();
  ApiSendMessageReply createEmptyInstance() => create();
  static $pb.PbList<ApiSendMessageReply> createRepeated() => $pb.PbList<ApiSendMessageReply>();
  @$core.pragma('dart2js:noInline')
  static ApiSendMessageReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSendMessageReply>(create);
  static ApiSendMessageReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

