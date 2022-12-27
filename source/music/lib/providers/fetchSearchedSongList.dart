import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:music/constrans/urls.dart';


Future GetSearchResults(String searchThis) async{
  var headers = APIheader2;
  var request = http.Request('GET', Uri.parse(searchingUrl+searchThis));
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var jsonResponse = json.decode(await response.stream.bytesToString());
    jsonResponse["isLoggedIn"]=true;
    jsonResponse["isSuccess"]=true;
    jsonResponse["expired"]=false;
    jsonResponse["somethingWentWrong"]=false;
    print(jsonResponse);
    return jsonResponse;
  }
  if (response.statusCode == 401) {
    return {"isLoggedIn":false,"isSuccess":false,"expired":false,"somethingWentWrong":false};
  }
  return {"isLoggedIn":true,"isSuccess":false,"expired":false,"somethingWentWrong":true};
}