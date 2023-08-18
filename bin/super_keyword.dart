import 'package:super_keyword/super_keyword.dart' as super_keyword;

void main(List<String> arguments) {

  B b=B();
  b.showData();

  F f=F();
  f.showData();

  Dog dog =Dog();



}

//super can be used in two ways  1: super 2: super()



//super
class A
{

  int x=20;
  void sum()
  {
    print("Sum() of class A is called");


  }



}


class B extends A
{

  int x=10;
  @override
  void sum()
  {
    print("Sum() of class B is called");


  }


  void showData()
  {

    print("value of x is $x");
    print(super.x);
    sum();
    super.sum();
  }





}

//can access only immediate super class
 class D
 {

   int x=20;


 }

class E extends D
{
  int x=30;


}
class F extends E
{

  int x=40;
  void showData()
  {

    print(x);
    print(super.x);
  }

}

//----------------------------------------------------------------------------------------------------------------------------------

//super()

class Animal
{

  Animal()
  {

    print("Default Constructor of Animal Class");

  }

  Animal.withParameter(String a,String b)
  {

    print("Full name of Dog is $a  $b");
  }

  Animal.someData();





}


class Dog extends Animal
{
  Dog():super.withParameter("Lucy", "Lucy")
  {
    print("Default Constructor of Dog Class");
  }




}