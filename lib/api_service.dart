import 'dart:convert';
import 'package:http/http.dart' as http;

var link = "https://opentdb.com/api.php?amount=20";

getQuiz()async{
  var respons = await http.get(Uri.parse(link));
  if(respons.statusCode == 200){
    var data = jsonDecode(respons.body.toString());
    print('data is loaded');
    return data;
  }
}
