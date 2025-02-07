//records are real values. We can store them in variables, pass them to and from functions and store them in lists.
//records dont have setters...they only have getters...so we cannot assign any new value
//they are type safe
//for 2 records to be comparable...all arguements should be same

void main(){
  final records = (4.5,greeting: 'hi',isAdult:true,3);
  // records = (2.0,false,greeting: ,'hi',isAdult: true);  //error due to type safety of records
  print(records.$2);


  (double, int)? name = (4.5,2);
  print(name);
  name = null;
  print(name);

  final list = [1,2,3];
  final [a,b,c]= list;
  print('$a $b $c');
}

({double point,String greeting}) giveMeSomeDoubles(){
  return (point: 4.5,greeting: "Hey!");
}