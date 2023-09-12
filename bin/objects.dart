// import 'package:objects/objects.dart' as objects;
// class Person{
//  final String name;
//  final int age;

//   Person(this.name,this.age);
//   Person.ageabove50(this.name,this.age);
//   Person.agebelow50(this.name,this.age);

//   void sayhai(){
//     print("hai");
//   }

// }

// void main() {
//   // final Person1=Person('sx',38);

//   // print(Person1.name);
//   final Person1= Person.ageabove50("azeem", 25);{
//     print(Person1.name);
//   }
//     final Person2= Person.agebelow50("aze", 55);
//   print(Person1.age);
//    print(Person1.age);
//     print(Person2.age);
//   Person2.sayhai();
// }
// import 'dart:ffi';

// abstract class Animal {
//   void sayanimalname() {
//     print("gorilla");
//   }
// }

// class Human extends Animal {
//   void sayname() {
//     print("azeem");
//   }

//   @override
//   void sayanimalname() {
//     print("say hello women");

//     super.sayanimalname();
//   }
// }

// void main() {
//   // final answer = Human();
//   // answer.sayname();
//   // answer.sayanimalname();
//   Mainfunction(
//     name: 'jithin',
//     fun: (name) {
//       print('johnson');
//       print(name);
//     },
//     number: 10,
//   );
// }

// void Mainfunction({required String name, required Function(String? name) fun, int? number}) {
//   print(name);
//   fun('azeem');
// }
abstract class Product {
  Product(this.price, {this.weight, this.volume,  this.count});

  int price;
  int? weight;
  int? volume;
  int? count;
  late int totalPrice;

  void calculate();
}

class Pen extends Product {
  Pen({required price, required count}) : super(price,count: count);
  void computePenname() {
   ;
  }

  @override
  void calculate() {

    if (count!=null){
     totalPrice = price * count!;
      print("3 pen price is$totalPrice RupeesS");

    }
    
     
    
  }
}


class Sugar extends Product{
  Sugar({ required price,required weight}):super(price,weight: weight);


  @override
  void calculate() {

    if (weight!=null){
     totalPrice=price * weight!;
      print(" 35 kg sugar price is $totalPrice Rs");
    }
        
  }}


  class Oil extends Product{
  Oil ({ required price,required volume}):super(price,volume: volume);
  
  @override
  void calculate() {
    if (volume!=null){
     totalPrice=price * volume!;
      print("10 liter oil price is $totalPrice Rs");
    }
  }
}


void main() {
  final prctprice= Pen(price: 12, count: 3);
  final prctweight=Sugar(price: 35, weight: 23);
  final prctvolume=Oil(price: 105, volume: 50);

  // prctprice.computePenname();
  prctprice.calculate();
  prctweight.calculate();
  prctvolume.calculate();
}


// class Human extends Animal {
//   Human({required name,required noOfLegs}):super(name,noOfLegs);
  
//   void sayName() {
//     print(name);
//   }
  
//   @override
//   void move() {
//     print("walk with $noOfLegs legs.");
//   }
// }

// void main() {
//   Animal a1 = Hourse(name: "julie",noOfLegs: 4);
//   Animal a2 = Human(name: "azeem", noOfLegs: 2);
  
//   a1.move();
//   a2.move();
  
//   //a2.sayName();  won't get as move is not part of animal
//   a2 = a2 as Human; // type casted to human type now we'll get sayName
//   a2.sayName();
// }
