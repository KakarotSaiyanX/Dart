import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{

  int i=1;
  while(i<31){
    var url = Uri.http("dummyjson.com",'quotes/${i}');  //constructs an API URL
    try {
      final res = await http.get(url);  //sends a GET request
    print(jsonDecode(res.body)['quote']);  //parsing json response using jsonDecode
    print("-- ${jsonDecode(res.body)['author']}");
    } catch (e) {
      print("Some erorr occurred");
      
    }
  i++;
  }
}







