import 'package:grpc_test/models/app_user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_test/generated/mobile_api_gen/mobile_api.pbgrpc.dart';
import 'package:grpc_test/services/auth.dart';

class UserService {
  UserService._internal();
  static final UserService instance = UserService._internal();

  MobileApiClient mobileApiClient =
      MobileApiClient(ClientChannel('192.168.76.2', //localhost
          port: 8080,
          //'192.168.31.221', // wifi
          //'www.wsai.pp.ua',
          //port: 6084,
          options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  /*static int _port = 6000;
  static String _ip = '192.168.76.2';
  static Uri _url = Uri(host: _ip, port: _port);
  static Map<String, String> _headers = {"Content-Type": "application/json"};*/

  AppUser? get _currentUser => AuthService().user;

  void addUser(AppUser user) async {
    var response = await mobileApiClient.apiAddUser(new ApiAddUserRequest(
        guid: user.uidFB,
        name: "${user.name}/${user.email}",
        token: user.token));
  }

  Future<List<AppUser>> getUsers() async {
    var users = <AppUser>[];
    var response = await mobileApiClient
        .apiGetUsers(new ApiGetUsersRequest(restriction: null));
    for (var item in response.names) {
      var parts = item.split(':').toList();
      if (parts.length > 1)
        users.add(new AppUser(uidFB: parts[0], name: parts[1]));
    }
    return users;
  }

  Future<String> getLastMessage(AppUser anotherUser) async {
    var reply = await mobileApiClient.apiGetLastMessage(
        new ApiGetLastMessageRequest(guid: anotherUser.uidFB));
    //return _currentUser?.uidFB == reply.forGuid ? reply.msg : "";
    return reply.msg;
  }

  Future<bool> sendMessage(AppUser anotherUser, String msg) async {
    var reply = await mobileApiClient.apiSendMessage(new ApiSendMessageRequest(
        fromGuid: _currentUser?.uidFB, forGuid: anotherUser.uidFB, msg: msg));
    return reply.status;
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
