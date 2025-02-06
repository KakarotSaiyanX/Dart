// futures --> promises in dart
//simple asynch await me jab tk await waala code execute nhi hota..baaki statement bhi execute nhi hogi..
//then function pe code execute hota rhega.beech me jab bhi requirement fulfill hoga..future waala part execute ho jaega


void main() async{

  print("sup");
  // final res = await giveResultAfter2Sec();
  // print(res);
  // print("Hello");
  // print("hi");

  final res = giveResultAfter2Sec().then((val){
    print(val);
  });
  print("hi");
  print("hello");
}

Future<String> giveResultAfter2Sec(){
  return Future.delayed(Duration(seconds: 2),(){
    return "HEyyyyyyy!!!!";
  });
}