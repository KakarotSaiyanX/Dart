void main () async{
  // fetchPost().then((p){
  //   print(p.title);
  //   print(p.userID);
  // });

  final post = await fetchPost();
  print(post.title);
  print(post.userID);

}

Future<Post> fetchPost(){
  const delay = Duration(seconds: 3);

  return Future.delayed(delay,(){
    return Post("My Post", 113);
  });
}

class Post{
  String title;
  int userID;
  Post(this.title,this.userID);
}