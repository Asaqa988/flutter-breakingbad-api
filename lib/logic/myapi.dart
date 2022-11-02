import 'dart:convert';

import 'package:http/http.dart' as http;

class BreakingBad {
  String baseUrl = "https://www.breakingbadapi.com/api";
  void get({required String char_id}) async {
    Uri myurl = Uri.parse("$baseUrl/characters/$char_id");
    http.Response myresponse = await http.get(myurl);
    List MyData = jsonDecode(myresponse.body);
    // print(MyData);

    int ID = MyData[0]["char_id"];
    print("this is the ID $ID");
    String Name = MyData[0]["name"];
    print("this is the name $Name");
    String Image = MyData[0]["img"];
    print("this is the image $Image");
    String NickName = MyData[0]["nickname"];
    print("this is the nickname $NickName");
  }
}
