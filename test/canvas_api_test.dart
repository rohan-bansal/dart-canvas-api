import 'dart:convert';

import 'dart:io';

import 'package:canvas_api/courses/course.dart';
import 'package:canvas_api/users/user.dart';
import 'package:http/http.dart' as http;

Future<http.Response> getRequest(var url, var authToken) async {
  var response = await http.get(url,
      headers: {HttpHeaders.authorizationHeader: "Bearer " + authToken});

  return response;
}

Future<String> fetch(String url) async {
  String domain = "mitty";
  String token =
      "15861~KCB7wAmewZoIJnkr9UKr6eaWplrxh1bAox8x9ycAAEOKf8LvmXE75QBEObbyfd1q";

  http.Response code =
      await getRequest("https://$domain.instructure.com" + url, token);

  if (code.statusCode == 200) {
    return code.body;
  } else {
    return null;
  }
}

void main() {
  fetch("/api/v1/courses").then((value) {
    List js = json.decode(value);
    js.forEach((element) {
      print(Course.fromJson(element).name);
    });
  });
  // testWidgets('test canvas api', (WidgetTester tester) async {
  //   await tester.runAsync(() async {
  //   });
  // });
}
