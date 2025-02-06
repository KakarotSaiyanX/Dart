//streams is similar to subscribing to an event.It will give all updates
//listen() function gives us stream Subscription-> allows to pause,resume or cancel flow of data of stream.   
// async* --> stream
//instead of return..there is yield in streams...yield is used only inside generator function.Instead of returning a value once, it pauses execution and returns multiple values lazily.  The function can continue executing after yield is called.



void main() async {
  countDown().listen((val){
    print(val);
  },
  onDone:(){
    print("done");
  });
 


}

// Stream<int> countDown() async*{
//     await Future.delayed(Duration(seconds: 1));  // Wait for 1 second
//   for(int i=5;i>0;i--){
//     yield i;  // Emit the current value of 'i' to the strream
//   }
// }


// OR

//it is not stream which stops us fromm using returnn...it is async* which stops us.


Stream<int> countDown(){
    return Stream.periodic(Duration(seconds: 1),(val){
      return val;
    });
}