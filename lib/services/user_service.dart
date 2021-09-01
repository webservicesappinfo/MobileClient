import 'dart:convert';

import 'package:grpc_test/models/app_user.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_test/generated/mobile_api_gen/mobile_api.pbgrpc.dart';
import 'package:grpc_test/services/auth.dart';
import 'package:grpc_test/global.dart' as global;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserService {
  UserService._internal();
  static final UserService instance = UserService._internal();

  MobileApiClient mobileApiClient = MobileApiClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  /*static int _port = 6000;
  static String _ip = '192.168.76.2';
  static Uri _url = Uri(host: _ip, port: _port);
  static Map<String, String> _headers = {"Content-Type": "application/json"};*/

  AppUser? get _currentUser => AuthService().user;

  void addUser(AppUser? user) async {
    if (user == null) return;
    var response = await mobileApiClient.apiAddUser(new ApiAddUserRequest(
        guid: user.uidFB,
        name: "${user.name}/${user.email}",
        token: user.token));
  }

  Future<List<AppUser>> getUsers() async {
    var users = <AppUser>[];
    var response = await mobileApiClient
        .apiGetUsers(new ApiGetUsersRequest(restriction: null));
    var curUserCaption = "${_currentUser?.name}/${_currentUser?.email}";
    for (var item in response.names) {
      var parts = item.split(':').toList();
      if (parts.length > 1) {
        if (parts[1] != curUserCaption)
          users.add(new AppUser(uidFB: parts[0], name: parts[1]));
      }
    }
    return users;
  }

  Future<String> findLastMessage(AppUser anotherUser) async {
    var reply = await mobileApiClient.apiFindLastMessage(
        new ApiFindLastMessageRequest(
            fromGuid: AuthService().user?.uidFB, forGuid: anotherUser.uidFB));
    return reply.msg;
  }

  Future<bool> sendMessage(AppUser anotherUser, String msg) async {
    var reply = await mobileApiClient.apiSendMessage(new ApiSendMessageRequest(
        fromGuid: _currentUser?.uidFB, forGuid: anotherUser.uidFB, msg: msg));
    return reply.status;
  }

  Future<LatLng?> getUserLocation(AppUser? user) async {
    if (user == null) return null;
    var reply = await mobileApiClient
        .apiGetUserLocation(new ApiGetUserLocationRequest(guid: user.uidFB));
    var lat = double.tryParse(reply.lat);
    var lng = double.tryParse(reply.lng);
    if (lat != null && lng != null) return LatLng(lat, lng);
    return null;
  }

  Future<bool> setUserLocation(AppUser user) async {
    if (user.location == null) return false;
    var reply = await mobileApiClient.apiSetUserLocation(
        new ApiSetUserLocationRequest(
            forGuid: user.uidFB,
            lat: user.location?.latitude.toString(),
            lng: user.location?.longitude.toString()));
    return reply.isSet;
  }

  /*Future<http.Response> post(AppUser? user, [bool checkInfo = false]) async {
    if (user == null) return Future.error("error");
    if (checkInfo) {
      var userInfo = await FirebaseFirestore.instance
          .collection("users")
          .doc(_currentUser.uidFB)
          .get();
      if (userInfo.data != null) {
        var userData = userInfo.data();
        user.login = userData?['Login'];
      }
    }
    String jsonStr = jsonEncode(user.toJsonForPost());
    final response = await http.post(_url, headers: _headers, body: jsonStr);
    if (response.statusCode == 200 || response.statusCode == 204) {
      _currentUser = new AppUser.fromJson(json.decode(response.body));
    }
    return response;
  }*/

  void saveToken(AppUser user, String token) {}
}
