
//
// double finalPrice([double? price, int? x, double? discount]) {
//   double fP = price! - (price * discount! / 100);
//   return fP;
// }

void main() {

  /// Data_Types => { Primitive , Collection }
  // Primitive  => int, double, Boolean, String
  // Collection => List, Set, Map


  /// int

  // int num = 90, _num = 80, $num = 70, num5 = 60;
  // print(num);
  // print("hello ${a[0]}");
  // print("number 1 is : " + num.toString());

  // int num1 = 15;
  // int num2 = 10;
  // int result = num1 ~/ num2; // put ~ before / to make the compiler take the integer value (result = ? )
  // double result = num1 / num2; (result = ? )
  // int result = num1 / num2; //(result = ? )
  // print(result);

  //==================================
  /// double

  // double avr = 8.598;
  // print(avr);
  // print(avr.round()); // للتقريب لاقرب عدد صحيح
  // print(avr.floor()); // للتقريب لاقل عدد صحيح
  // print(avr.ceil()); // للتقريب لاكبر عدد صحيح
  // print(avr.truncate()); // بنقرب ناحية الصفر
  // print(avr.toString());
  // print(avr.toStringAsFixed(4));
  //print(avr.toStringAsFixed(2));

  //==================================
  /// Numbers data type >> ( The num type is an inherited data type of the int and double types )

  // I use it when I don't know how to set this value (double or int) , like ratingMovie

  // num x =6;
  // num a = 8.9;
  // var a1 = num.parse("1");
  // var b1 = num.parse("2.34");
  //
  // var c1 = a1 + b1;
  // print("Product = $c1");

  //==================================
  /// Boolean
  // int x=9,y=6;
  // bool isMarried = (x>y);
  // print("Married Status: $isMarried");

  //==================================
  /// String

  // String name = "Mohamed";
  // String address = 'cairo';
  //
  // print("My name is $name \n My address is $address");
  //
  // String str = 'this message from\tmohammed \n break';
  // print(str); // add (r) before string
//
//   String text = """This is a multiline line
// string using the triple-quotes.
// This is tutorial on dart strings.
// """;
//   print(text);

  //==================================
  /// some ( Numbers & String ) methods

  //==================================
  /// List

  // List<int> numbers = [45, 50, 120, 90,];
  // print("numbers = $numbers");
  // print("second item is : ${numbers[1]}");
  // print("length of your list is : ${numbers.length}");
  // numbers.add(3);
  // print("numbers = $numbers");
  // numbers.insert(2, 200);
  // print("numbers = $numbers");
  // numbers.sort();
  // print("numbers = $numbers");
  // numbers.clear();
  // print("numbers = $numbers");

  //=================================
  /// Set
  //
  // Set<int> x = {1, 2, 3};
  // x.add(10);
  // x.addAll({1, 2, 3, 6});
  // print(x);
  // if (x.contains(3)) {
  //   print(x);
  //   print(x.length);
  //   print(x.elementAt(2));
  // }
  //
  // Set<int> a = {4, 5, 6, 7};
  // Set<int> b = {6, 7, 8, 9};
  // print(a.intersection(b));
  // print(a.union(b));
  // print(a.difference(b));
  // print(b.difference(a));

  //=================================
  /// Map

  // Map data = {
  //   "name": "mohamed",
  //   "id": 44543,
  //   "num": 80.5,
  // };
  // print(data);
  // print(data["id"]);
  //
  // Map<int, String> tmp = {
  //   1: "mohamed",
  //   2: "sayed",
  // };
  // print(tmp);
  // print(tmp[1]);

  //=================================

  /// var  >> (like auto in c++)

  // // var is not data type , it is key word
  // var data1 = 80; // as int
  // var data2 = "name"; // as string
  // var data3 = true; // as bool
  // var data4 = 90.5; // as double
  // var data5 = [20, 10]; // as list
  // var data6 = {
  //   "name": "mohamed",
  // }; // as map
  //
  // // >>>>>>  we cannot change type after initialize
  // print(data1);
  // print(data2);
  // print(data3);
  // print(data4);
  // print(data5);
  // print(data6);
  // print(data6["name"]);
  //
  // // the only phase i can change type when i declare without initialize
  // var tmp; // consider as dynamic
  // tmp = 'mohamed';
  // print(tmp);
  // tmp = 15;
  // print(tmp);
  // tmp = 3.5;
  // print(tmp);

  /// dynamic as var but we can change type after initialize (week data type)

  // dynamic test = 1; // as int
  // print(test);
  // test = true; // same variable as bool
  // print(test);

  // // ( Runes ) => It's Data_Type represent Unicode values of String
  // String heartSymbol = '\u2665';
  // String laughSymbol = '\u{1f600}';
  // print(heartSymbol);
  // print(laughSymbol);

  //=================================

  /// Difference between (const, final)
  // const => compile time
  // final => run time

  //=================================

  /// Operators
  // Arithmetic Operators : + , - , * , / , ~/ , % , (++ , --) => Increment & Decrement Operators
  // Relational Operators : > , < , >= , <= , == , !=
  // Assignment Operators : = , += , -= , *= , /= ,  ( ??= )
  // Logical    Operators : && , || , !
  // Bitwise    Operators : & , | , ^ , ~ , << , >>
  // Type Test  Operators : is , is!

  //=================================
  /// Conditions
  // if , if else , nested if , inLine if (Ternary Operator) , switch
  //
  // var dayOfWeek = 5;
  // if (dayOfWeek == 1) {
  //   print("Day is Sunday.");
  // }
  // else if (dayOfWeek == 2) {
  //   print("Day is Monday.");
  // }
  // else if (dayOfWeek == 3) {
  //   print("Day is Tuesday.");
  // }
  // else if (dayOfWeek == 4) {
  //   print("Day is Wednesday.");
  // }
  // else if (dayOfWeek == 5) {
  //   print("Day is Thursday.");
  // }
  // else if (dayOfWeek == 6) {
  //   print("Day is Friday.");
  // }
  // else if (dayOfWeek == 7) {
  //   print("Day is Saturday.");
  // }else{
  //   print("Invalid Weekday.");
  // }

  // // inLine if (Ternary Operator)
  // // condition ? ifConditionTrue : ifConditionFalse
  // int num1 = 10;
  // int num2 = 15;
  // int max = (num1 > num2) ? num1 : num2;
  // print("The greatest number is $max");
  //
  // var dayOfWeek = 5;
  // switch (dayOfWeek) {
  //   case 1:
  //     print("Day is Sunday.");
  //     break;
  //   case 2:
  //     print("Day is Monday.");
  //     break;
  //   case 3:
  //     print("Day is Tuesday.");
  //     break;
  //   case 4:
  //     print("Day is Wednesday.");
  //     break;
  //   case 5:
  //     print("Day is Thursday.");
  //     break;
  //   case 6:
  //     print("Day is Friday.");
  //     break;
  //   case 7:
  //     print("Day is Saturday.");
  //     break;
  //   default:
  //     print("Invalid Weekday.");
  //     break;
  // }
  //
  // var weather = "cloudy";
  // switch (weather) {
  //   case "sunny":
  //     print("Its a sunny day. Put sunscreen.");
  //     break;
  //   case "snowy":
  //     print("Get your skis.");
  //     break;
  //   case "cloudy":
  //   case "rainy":
  //     print("Please bring umbrella.");
  //     break;
  //   default:
  //     print("Sorry I am not familiar with such weather.");
  //     break;
  // }

  //=================================
  /// Loops

  // while , do while
  // int x = 5;
  // do {
  //   print(x);
  //   x--;
  // }while (x > 0);

  // for loop , for in , for Each
  // List<int> list = [1, 2, 3, 4];
  //
  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }
  // for (int i in list) {
  //   print(i);
  // }
  //
  // list.forEach((element) {
  //   print(element);
  // });

  //=================================
  /// Functions

  // Functions are the block of code that performs a specific task.
  // Anonymous Function
  // Arrow Function
  // Parameters type [ positional , optional , named ]

  //=================================
  /// Null Safety    (null-aware operators) :

  //    ?  => Nullable operator  ( String? str; )
  //    ?.  => Null-aware access & method invocation operator  ( use it with methods like => list?.length )
  //    !  => Null Assertion operator
  //    ??  => If-null operator
  //   ??=  => Null-aware assignment operator

}
