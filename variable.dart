//  import 'dart:io';

void main(){
    /*

    // <data-type> <variable-name> = value;x

    //DATA-TYPES:
    //int/double
    int a =34;
    double b = 3.200;
    print(19);
    print(a);
    print(b);


    //String
    String name = "Abhijeeet";
    //boolean
    bool isAdult = true;

    //dynamic- any thing can be stored but it is not preffered.Because we dont know data-type at compile time. Also, using conventional data type we can use special functions provided by conventional data type.

    print(a.isEven);
    
    //another drawback of dynamic:
    dynamic someValue = "43.45"; //this wont give compile time error..we will not see error until we execute this code because type is not known at compile time.
    // print(someValue+2);


    int firstValue = 654;

    print(firstValue);
    firstValue +=75; //here value is re-assigned
    print(firstValue);

    String greeting = "Hello,";

    print("$greeting yoo");
    print("${greeting.isEmpty} yoo"); //{} used if something about string is used
    print(("\$21")); //this is how we can print $ sign
    print("Hell0\nWorld");
    String randomString = '''this
    is 
    a multiline
    string''';
    print(randomString.length);

    dynamic testValue = 10;
    print("$testValue is intger here");

    testValue = "Now its data-type is converted to string";
    print(testValue);



    //VAR or FINAL or CONST
    // var is different than dynamic because is knows data-type at compile time.So we will can use special attributes of that data-type unlike dynamic.It correctly identifies type. due to dart's type inference system can automatically detect the type of value we have given to a variable.
    var someRandomValue1 = 10;

    final someRandomValue2 = '10';
    const someRandomValue3 = '10';

    print(someRandomValue1);
    print(someRandomValue2);
    print(someRandomValue3);

    /*type inference works for all these three data type. differnce comes during re-assigning the values.
    var->allows re-assigning.
    const and final-> don't allow re-assigning.
    */
    print("_________________________");
    // someRandomValue1 = '10001'; //gives error cuz data type is being changes..this is allowed in dynamic

    someRandomValue1 = 10001;
    // someRandomValue2 = '10001'; //gives error cuz we can't re-assign
    // someRandomValue3 = '10001'; //gives error cuz we can't re-assign
    print(someRandomValue1);
    print(someRandomValue2);
    print(someRandomValue3);

    const someValue2= DateTime.now();  //error cuz it is "Datetime" retrives data at run time. So it is run time constant.It knows value before code is executed.

    final someValue = DateTime.now();  //error cuz it is "Datetime" retrives data at compile time. So it is compile time constant
    print(someValue);   


    //NULLABLE VARIABLES or OPTIONAL VARIABLES-variables can have value of int/string/bool or it can have null value which can be assigned later.
    String someValue = " "; // it is  not null as it has somme value
   //  int some = 0; //some is not null.It has value of 0
    int? some = null; //adding ? makes the variable nullable
    //adding ! means that variable cant be null.


    diving more deep into it,
    lets say we want to print 0 if value is null.
    */

    var someValue = null;
    print(someValue?.length??0); //here if the value is null then it will print 0 else it will print its length

    someValue = "Hello";
    print(someValue?.length??0); //here it will print length since the value is not null

   









 }