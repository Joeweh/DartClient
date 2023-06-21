import 'package:http/http.dart' as http;
import 'package:rest_client/user.dart';

class HttpClient {
  Future<http.Response> getUsers() async {
    var url = Uri.https('gin-restapi.onrender.com', '/users');
    return await http.get(url);
  }

  Future<http.Response> getUser(int id) async {
    var url = Uri.https('gin-restapi.onrender.com', '/users/$id');
    return await http.get(url);
  }

  Future<http.Response> saveUser(User user) async {
    var url = Uri.https('gin-restapi.onrender.com', '/users');
    return await http.post(url, body: user);
  }

  Future<http.Response> updateUser(int id, UpdateUserDAO userDAO) async {
    var url = Uri.https('gin-restapi.onrender.com', '/users/$id');
    return await http.put(url, body: userDAO);
  }

  Future<http.Response> deleteUser(int id) async {
    var url = Uri.https('gin-restapi.onrender.com', '/users/$id');
    return await http.delete(url);
  }
} 