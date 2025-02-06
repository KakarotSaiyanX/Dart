//generics allows us to pass multiple different and types in functions and classes

//<T> is used to make that class generic
//when we are creating object from a class we use dot notation.when we use map...we use sqare brackets.


void main() {
  var noodles = MenuItem("Veg noodles", 9.99);
  var pizza = Pizza(["Mushrooms","peppers"],"veg volcano",12.66);
  print(noodles.title);
  print(noodles.price);
  print(pizza.title);
  print(pizza.price);
  print(noodles.format());
  print(pizza.format());

  print("break");
  var food = Collection<MenuItem>(
    "Menu Items",
    ["Pizza","Noodles","Kebabs","roast"]
  );

  var random = food.randomItem();
  print(random);
}

class MenuItem {
  String title ;
  double price ;
  
  MenuItem(this.title,this.price); //"this" will assign value which we will pass inside the constructor to title and price.

  
  String format(){
    return "$title --> $price";
    
  }

  @override
  String toString(){
    return format();
  }
}


class Pizza extends MenuItem{
  List<String> toppings;

  // Pizza(this.toppings, String title, double price): super(title,price);

  // OR

  Pizza(this.toppings,super.title,super.price);

  @override
  String format(){
    var formattedToppings = 'Contains:';

    for(final t in toppings){
      formattedToppings = "$formattedToppings $t";

    }
      return '$title --> $price \n $formattedToppings';
  }



}

class Collection<T>{
  String name;
  List<T> data;

  Collection(this.name,this.data);
  T randomItem(){
    data.shuffle();
    return data[0];
  }
}

