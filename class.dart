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
}

class MenuItem {
  String title ;
  double price ;
  
  MenuItem(this.title,this.price); //"this" will assign value which we will pass inside the constructor to title and price.

  
  String format(){
    return "$title --> $price";
    
  }
}


class Pizza extends MenuItem{
  List<String> toppings;

  // Pizza(this.toppings, String title, double price): super(title,price);

  // OR

  Pizza(this.toppings,super.title,super.price);

}

