/// Mo7aMeD_SaYeD


/// Constructors type ( default , parameterized , named , constant )
// class Student{
//   String? name;
//   int? id;
//   Student(){
//     print('');
//   }
//
//   Student.namedConstructor(int a){
//     id =a;
//   }
//
// }

/// const constructor  >> improve performance

  // All properties(attributes) of the class must be final.
  // It does not have any body.
  // Only class containing const constructor is initialized using the const keyword.
//
// class Point {
//   final int x;
//   final int y;
//
//   const Point(this.x, this.y);
// }
//
// void main() {
//   // p1 and p2 has the same hash code.
//   Point p1 = const Point(1, 2);
//   print("The p1 hash code is: ${p1.hashCode}");
//
//
//   Point p2 = const Point(1, 2);
//   print("The p2 hash code is: ${p2.hashCode}");
//
//   // without using const has different hash code.
//   Point p3 = Point(2, 2);
//   print("The p3 hash code is: ${p3.hashCode}");
//
//   Point p4 = Point(2, 2);
//   print("The p4 hash code is: ${p4.hashCode}");
// }


//***************************************************************************************
/// Encapsulation >> ( Data Hiding, Testability, Flexibility, Security )

// class Student {
//   // Private properties >> remember that using underscore (_) before a variable or method name makes it library private not class private.
//
//   String? _name;
//   int? _id;
//
//   void setName(String name) {
//     _name = name;
//   }
//
//   set id(int id) => _id = id;
//
//
//   int get id => _id!;
//
//   String getName() {
//     return _name!;
//   }
//
// }
//
// void main() {
//   Student student = Student();
//
//   //student.setId(1);
//   student.setName("John");
//
//   print("Id: ${student.getId()}");
//   print("Name: ${student.getName()}");
// }
//


//***************************************************************************************
/// Inheritance

// class Person {
//   String? name;
//   int? id;
//   int? age;
//
//   void display() {
//     print("Name: $name");
//     print("Age: $age");
//   }
// }
//
// class Student extends Person {
//   String? schoolName;
//   String? schoolAddress;
//
//   void displaySchoolInfo() {
//     print("School Name: $schoolName");
//     print("School Address: $schoolAddress");
//   }
// }
// class Employee extends Person{
//
//   int? salary;
// }
//
// void main() {
//   var student = Student();
//   student.name = "John";
//   student.age = 20;
//   student.schoolName = "ABC School";
//   student.schoolAddress = "New York";
//   student.display();
//   student.displaySchoolInfo();
// }

/// inheritance of constructor

// class Laptop {
//   Laptop() {
//     print("Laptop constructor");
//   }
//
//   Laptop.named() {
//     print("Laptop named constructor");
//   }
//
// }
//
// class Dell extends Laptop {
//   Dell() {
//     print("Dell constructor");
//   }
//
//   // Dell() : super.named() {
//   //   print("Dell constructor");
//   // }
//
// }
//
// void main() {
//   var dell = Dell();
// }
//


// class Person {
//   String name;
//   int age;
//
//   Person(this.name, this.age);
// }
//
// class Student extends Person {
//   int id;
//
//   Student(super.name, super.age, this.id);
//
//   //Student(String name, int age, this.rollNumber) : super(name, age);
//
//   void display(){
//     print("Student name: $name");
//     print("Student age: $age");
//     print("Student roll number: $id");
//   }
// }
//
// void main() {
//   var student = Student("mohamed", 20, 1);
//   student.display();
// }

/// Mixin >> multiple inheritance

// class SuperClass{
//   // code
// }
//
// mixin Mixin1{
//   // code
// }
//
// mixin Mixin2{
//   // code
// }
//
// class ChildClass extends SuperClass with Mixin1, Mixin2{
//   // code
// }


//***************************************************************************************
/// Polymorphism & override

// class Car{
//   void power(){
//     print("It runs on petrol.");
//   }
// }
//
// class Honda extends Car{
//
// }
// class Tesla extends Car{
//   @override
//   void power(){
//     print("It runs on electricity.");
//   }
// }
//
// void main(){
//   Honda honda = Honda();
//   Tesla tesla = Tesla(); //Car tesla2 = Tesla(); // Polymorphism
//
//
//   honda.power();
//   tesla.power();
// }



//***************************************************************************************
/// static in dart => It is used for memory management

// class Employee {
//
//   static int count = 0;
//
//   Employee() {
//     count++;
//   }
//   void totalEmployee() {
//     print("Total Employee: $count , $x");
//   }
// }
//
// void main() {
//   Employee e1 = Employee();
//   e1.totalEmployee();
//
//   Employee e2 = Employee();
//   e2.totalEmployee();
//
//   Employee e3 = Employee();
//   e3.totalEmployee();
// }

/// to continue

// class Student {
//   int id;
//   String name;
//   static String schoolName = "ABC School";
//   //const String schoolName = "ABC School";
//   Student(this.id, this.name);
//   void display() {
//     print("Id: $id");
//     print("Name: $name");
//     print("School Name: ${Student.schoolName}");
//   }
// }
//
// void main() {
//   Student s1 = Student(1, "John");
//   s1.display(); // 1, j ,abc
//   Student.schoolName="gh";
//
//   Student s2 = Student(2, "Smith");
//   s2.display(); // 2,s, gh
//   s1.display();
// }

/// continue with static function => to call it anytime without creating an instance of the class => memory management

// class SimpleInterest {
//   static double calculateInterest(double principal, double rate, double time) {
//     return (principal * rate * time) / 100;
//   }
// }
//
// void main() {
//   print("The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");
// }



//***************************************************************************************
/// abstract class

// abstract class Animal{
//   void eat();
// }
//
// class Dog extends Animal{
//   @override
//   void eat(){
//     print('Dog eat');
//   }
// }
//
// class Cat extends Animal{
//   @override
//   void eat(){
//     print('Cat eat');
//   }
// }



// abstract class Shape {
//   int width;
//   int height;
//
//   Shape({required this.width, required this.height});
//
//   int area(); // abstract method only allowed in abstract class
// }
//
// class Rectangle extends Shape {
//   Rectangle(int w, int h) : super(width: w, height: h);
//
//   @override
//   int area() {
//     return width * height;
//   }
// }
//
// class Triangle extends Shape {
//   Triangle(int w, int h) : super(width: w, height: h);
//
//   @override
//   int area() {
//     return (0.5 * width * height).toInt();
//   }
// }


//***************************************************************************************

//
// abstract class Animal {
//   String name;
//   double speed;
//
//   Animal(this.name, this.speed);
//   void run();
// }
//
// // mixin CanRun is only used by class that extends Animal
// mixin CanRun on Animal { /// ( on ) keyword
//   @override
//   void run() => print('$name is Running at speed $speed');
// }
//
// class Dog extends Animal with CanRun {
//   Dog(String name, double speed) : super(name, speed);
// }
//
// void main() {
//   var dog = Dog('My Dog', 25);
//   dog.run();
// }


