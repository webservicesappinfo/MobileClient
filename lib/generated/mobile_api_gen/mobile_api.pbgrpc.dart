///
//  Generated code. Do not modify.
//  source: mobile_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mobile_api.pb.dart' as $0;
export 'mobile_api.pb.dart';

class MobileApiClient extends $grpc.Client {
  static final _$apiAddUser =
      $grpc.ClientMethod<$0.ApiAddUserRequest, $0.ApiAddUserReply>(
          '/mobileApi.MobileApi/ApiAddUser',
          ($0.ApiAddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiAddUserReply.fromBuffer(value));
  static final _$apiGetUser =
      $grpc.ClientMethod<$0.ApiGetUserRequest, $0.ApiGetUserReply>(
          '/mobileApi.MobileApi/ApiGetUser',
          ($0.ApiGetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiGetUserReply.fromBuffer(value));
  static final _$apiGetUsers =
      $grpc.ClientMethod<$0.ApiGetUsersRequest, $0.ApiGetUsersReply>(
          '/mobileApi.MobileApi/ApiGetUsers',
          ($0.ApiGetUsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiGetUsersReply.fromBuffer(value));
  static final _$apiGetLastMessage = $grpc.ClientMethod<
          $0.ApiGetLastMessageRequest, $0.ApiGetLastMessagesReply>(
      '/mobileApi.MobileApi/ApiGetLastMessage',
      ($0.ApiGetLastMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ApiGetLastMessagesReply.fromBuffer(value));
  static final _$apiSendMessage =
      $grpc.ClientMethod<$0.ApiSendMessageRequest, $0.ApiSendMessageReply>(
          '/mobileApi.MobileApi/ApiSendMessage',
          ($0.ApiSendMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiSendMessageReply.fromBuffer(value));

  MobileApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ApiAddUserReply> apiAddUser(
      $0.ApiAddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiAddUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiGetUserReply> apiGetUser(
      $0.ApiGetUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiGetUsersReply> apiGetUsers(
      $0.ApiGetUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiGetLastMessagesReply> apiGetLastMessage(
      $0.ApiGetLastMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiGetLastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiSendMessageReply> apiSendMessage(
      $0.ApiSendMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiSendMessage, request, options: options);
  }
}

abstract class MobileApiServiceBase extends $grpc.Service {
  $core.String get $name => 'mobileApi.MobileApi';

  MobileApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ApiAddUserRequest, $0.ApiAddUserReply>(
        'ApiAddUser',
        apiAddUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApiAddUserRequest.fromBuffer(value),
        ($0.ApiAddUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiGetUserRequest, $0.ApiGetUserReply>(
        'ApiGetUser',
        apiGetUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApiGetUserRequest.fromBuffer(value),
        ($0.ApiGetUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiGetUsersRequest, $0.ApiGetUsersReply>(
        'ApiGetUsers',
        apiGetUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApiGetUsersRequest.fromBuffer(value),
        ($0.ApiGetUsersReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiGetLastMessageRequest,
            $0.ApiGetLastMessagesReply>(
        'ApiGetLastMessage',
        apiGetLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ApiGetLastMessageRequest.fromBuffer(value),
        ($0.ApiGetLastMessagesReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ApiSendMessageRequest, $0.ApiSendMessageReply>(
            'ApiSendMessage',
            apiSendMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ApiSendMessageRequest.fromBuffer(value),
            ($0.ApiSendMessageReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ApiAddUserReply> apiAddUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiAddUserRequest> request) async {
    return apiAddUser(call, await request);
  }

  $async.Future<$0.ApiGetUserReply> apiGetUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiGetUserRequest> request) async {
    return apiGetUser(call, await request);
  }

  $async.Future<$0.ApiGetUsersReply> apiGetUsers_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiGetUsersRequest> request) async {
    return apiGetUsers(call, await request);
  }

  $async.Future<$0.ApiGetLastMessagesReply> apiGetLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ApiGetLastMessageRequest> request) async {
    return apiGetLastMessage(call, await request);
  }

  $async.Future<$0.ApiSendMessageReply> apiSendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ApiSendMessageRequest> request) async {
    return apiSendMessage(call, await request);
  }

  $async.Future<$0.ApiAddUserReply> apiAddUser(
      $grpc.ServiceCall call, $0.ApiAddUserRequest request);
  $async.Future<$0.ApiGetUserReply> apiGetUser(
      $grpc.ServiceCall call, $0.ApiGetUserRequest request);
  $async.Future<$0.ApiGetUsersReply> apiGetUsers(
      $grpc.ServiceCall call, $0.ApiGetUsersRequest request);
  $async.Future<$0.ApiGetLastMessagesReply> apiGetLastMessage(
      $grpc.ServiceCall call, $0.ApiGetLastMessageRequest request);
  $async.Future<$0.ApiSendMessageReply> apiSendMessage(
      $grpc.ServiceCall call, $0.ApiSendMessageRequest request);
}
