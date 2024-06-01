import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier{

  //list of food menu
  final List<Food> _menu=[
    //burgers
    Food(
      name: "Classic Cheeseburger",
       description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.", 
       imagePath: "lib/images/burgers/cheese_burger.jpg", 
       price: 8.99, 
       category: FoodCategory.burgers, 
       availableAddons: [
        AddOn(name: "Extra Cheese", price: 0.99),
        AddOn(name: "Bacon", price: 1.99),
        AddOn(name: "Avocado", price: 2.99),
       ]
       ),
    Food(
      name: "BBQ Bacon Burger",
       description: "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight. ", 
       imagePath: "lib/images/burgers/bbq_burger.jpg", 
       price: 10.99, 
       category: FoodCategory.burgers, 
       availableAddons: [
        AddOn(name: "Grilled Onions", price: 0.99),
        AddOn(name: "Jalapenos", price: 1.99),
        AddOn(name: "Extra BBQ sauce", price: 2.99),
       ]
       ),
    Food(
      name: "Veggie Burger",
       description: "A hearty veggie burger topped with fresh avocado, lettuce, and tomato served on a whole ", 
       imagePath: "lib/images/burgers/vege_burger.jpg", 
       price: 9.99, 
       category: FoodCategory.burgers, 
       availableAddons: [
        AddOn(name: "Vegan Cheese", price: 0.99),
        AddOn(name: "Grilled Mushrooms", price: 1.99),
        AddOn(name: "Humus Spread ", price: 2.99),
       ]
       ),
    Food(
      name: "Aloha Burger",
       description: "A char-grilled chicken breast topped with a slice of grilled tomatoes, Swiss Cheese. ", 
       imagePath: "lib/images/burgers/aloha_burger.jpg", 
       price: 9.45, 
       category: FoodCategory.burgers, 
       availableAddons: [
        AddOn(name: "Teriyaki Glaze", price: 0.99),
        AddOn(name: "Extra Pineapple", price: 1.99),
        AddOn(name: "Bacon", price: 2.99),
       ]
       ),
    Food(
      name: "Bluemoon Burger",
       description: "This burger is a blue cheese lover's dream.It features a succulent beef patty, ", 
       imagePath: "lib/images/burgers/bluemoon_burger.jpg", 
       price: 9.45, 
       category: FoodCategory.burgers, 
       availableAddons: [
        AddOn(name: "Teriyaki Glaze", price: 0.99),
        AddOn(name: "Extra Pineapple", price: 1.99),
        AddOn(name: "Bacon", price: 2.99),
       ]
       ),
       


    //salads
    Food(
      name: "Greek Salad",
       description: "Tomatoes, cucumbers, red onions, feta cheese with olive oil and herbs. ", 
       imagePath: "lib/images/salads/greek_salad.jpg", 
       price: 9.45, 
       category: FoodCategory.salads, 
       availableAddons: [
        AddOn(name: "Feta Cheese", price: 0.99),
        AddOn(name: "Kalmata Olives", price: 1.99),
        AddOn(name: "Extra Parmesian", price: 2.99),
       ]
       ),
    Food(
      name: "Quinoa Salad",
       description: "Quiona mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette. ", 
       imagePath: "lib/images/salads/quinoa_salad.jpg", 
       price: 9.45, 
       category: FoodCategory.salads, 
       availableAddons: [
        AddOn(name: "Avocado", price: 0.99),
        AddOn(name: "Feta Cheese", price: 1.99),
        AddOn(name: "Grilled Chicken", price: 2.99),
       ]
       ),
    Food(
      name: "Ceaser Salad",
       description: "Crisp romaine lettuce,parmesian cheese,croutons, and Caesar dressing. ", 
       imagePath: "lib/images/salads/caesar_salad.jpg", 
       price: 9.45, 
       category: FoodCategory.salads, 
       availableAddons: [
        AddOn(name: "Grilled Chicken", price: 0.99),
        AddOn(name: "Anchoives", price: 1.99),
        AddOn(name: "Extra Parmesian", price: 2.99),
       ]
       ),
     Food(
      name: "Asian Sesame Salad",
       description: "Delight in the flavours of the East with the sesame-infused salad.It includes. ", 
       imagePath: "lib/images/salads/asiansesame_salad.jpg", 
       price: 9.45, 
       category: FoodCategory.salads, 
       availableAddons: [
        AddOn(name: "Mandarin Oranges", price: 0.99),
        AddOn(name: "Almond Silvers", price: 1.99),
        AddOn(name: "Extra Teriyaki Chicken", price: 2.99),
       ]
       ),
     Food(
      name: "South West Chicken Salad",
       description: "This colorful salad combines the zesty flavours of the SouthWest.Its loaded with a mixed. ", 
       imagePath: "lib/images/salads/southwest_salad.jpg", 
       price: 9.45, 
       category: FoodCategory.salads, 
       availableAddons: [
        AddOn(name: "Sour Cream", price: 0.99),
        AddOn(name: "Pico de Gallo", price: 1.99),
        AddOn(name: "Guacamole", price: 2.99),
       ]
       ),

    //sides
     Food(
      name: "Sweet Potato Fries",
       description: "A char-grilled chicken breast topped with a slice of grilled tomatoes, Swiss Cheese. ", 
       imagePath: "lib/images/sides/sweetpotatofries_side.jpg", 
       price: 9.45, 
       category: FoodCategory.sides, 
       availableAddons: [
        AddOn(name: "Cheese Sauce", price: 0.99),
        AddOn(name: "Truffle Oil", price: 1.99),
        AddOn(name: "Cajun Spice", price: 2.99),
       ]
       ),
     Food(
      name: "Onion RIngs",
       description: "Golden and crispy onion rings, perfect for dipping. ", 
       imagePath: "lib/images/sides/onion_rings_side.jpg", 
       price: 4.00, 
       category: FoodCategory.sides, 
       availableAddons: [
        AddOn(name: "Ranch Dip", price: 0.99),
        AddOn(name: "Spicy Mayo", price: 1.99),
        AddOn(name: "Parmesian Dust", price: 2.99),
       ]
       ),
     Food(
      name: "Garlic Bread",
       description: "Warm and toasty garlic bread,topped with melted butter and parsley. ", 
       imagePath: "lib/images/sides/garlic_bread_side.jpg", 
       price: 9.45, 
       category: FoodCategory.sides, 
       availableAddons: [
        AddOn(name: "Extra Garlic", price: 0.99),
        AddOn(name: "Mozarella Cheese", price: 1.99),
        AddOn(name: "Marina Dip", price: 2.99),
       ]
       ),
      Food(
      name: "Loaded Sweet Potato Fries",
       description: "Savory Sweet potato fries loaded with melted cheesse, smoky bacons bits and a dollop of. ", 
       imagePath: "lib/images/sides/loadedfries_side.jpg", 
       price: 9.45, 
       category: FoodCategory.sides, 
       availableAddons: [
        AddOn(name: "Sour Cream", price: 0.99),
        AddOn(name: "Bacon Bits", price: 1.99),
        AddOn(name: "Green Onions", price: 2.99),
       ]
       ),

    //desserts
     Food(
      name: "Chocolate Brownie",
       description: "Rich and fudgy chocolate Brownie,with chunks of chocolate . ",
       imagePath: "lib/images/desserts/brownie_desserts.jpg", 
       price: 9.45, 
       category: FoodCategory.desserts, 
       availableAddons: [
        AddOn(name: "", price: 0.99),
        AddOn(name: "Extra Pineapple", price: 1.99),
        AddOn(name: "Bacon", price: 2.99),
       ]
       ),
     Food(
      name: "Pastry",
       description: "A tangy and sweet  pastry with a rich, creamy filling and a crumbly graham cracker. ", 
       imagePath: "lib/images/desserts/pastry_desserts.jpg", 
       price: 9.45, 
       category: FoodCategory.desserts, 
       availableAddons: [
        AddOn(name: "Whipped Cream", price: 0.99),
        AddOn(name: "Lime Zest", price: 1.99),
        AddOn(name: "Mango Coulis", price: 2.99),
       ]
       ),
     Food(
      name: "Red Velvet Cake",
       description: "A delectable red velvet cake with a warm, goey chocolate lava center, served with a scoop of ice cream. ", 
       imagePath: "lib/images/desserts/slicecake_desserts.jpg", 
       price: 5.45, 
       category: FoodCategory.desserts, 
       availableAddons: [
        AddOn(name: "Raspberry Sauce", price: 0.99),
        AddOn(name: "Cream Cheese Icing", price: 1.99),
        AddOn(name: "Cholocate Sprinkles", price: 2.99),
       ]
       ),

    //drinks
    Food(
      name: "Lemonade",
       description: "Refreshing lemonade made with real lemons and a touch of sweetness. ", 
       imagePath: "lib/images/drinks/juice_drinks.jpg", 
       price: 9.45, 
       category: FoodCategory.drinks, 
       availableAddons: [
        AddOn(name: "Strawberry Flavour", price: 0.99),
        AddOn(name: "Mint Leaves", price: 1.99),
        AddOn(name: "Ginger Zest", price: 2.99),
       ]
       ),

    Food(
      name: "Smoothie",
       description: "A blend of fresh fruits and yoghurt, perfect for a healthy boost. ", 
       imagePath: "lib/images/drinks/smoothie_drinks.jpg", 
       price: 9.45, 
       category: FoodCategory.drinks, 
       availableAddons: [
        AddOn(name: "Protein Powder", price: 0.99),
        AddOn(name: "Almond Milk", price: 1.99),
        AddOn(name: "Chia Seeds", price: 2.99),
       ]
       ),
    Food(
      name: "Cider",
       description: "A classic Cuban drink with muddled lime and mint,sweetend with sugar. ", 
       imagePath: "lib/images/drinks/cider_drinks.jpg", 
       price: 4.99, 
       category: FoodCategory.drinks, 
       availableAddons: [
        AddOn(name: "Extra Ice", price: 0.49),
        AddOn(name: "Rasberry Puree", price: 0.99),
        AddOn(name: "Splash of Rum", price: 1.99),
       ]
       ),
     Food(
      name: "Caramel Macchiato",
       description: "A layered coffee drink with steamed milk,espresso, and vanilla syrup. ", 
       imagePath: "lib/images/drinks/hot_drinks.jpg", 
       price: 4.99, 
       category: FoodCategory.drinks, 
       availableAddons: [
        AddOn(name: "Extra Shot Of Espresso", price: 0.99),
        AddOn(name: "Hazelnut Syrup", price: 0.50),
        AddOn(name: "Whipped Cream", price: 0.99),
       ]
       ),
  ];
    //user cart
  final List<CartItem> _cart=[];

  //delivery address
  String _deliveryAddress='99 Hollywood Bliv';
  
  
  /*
   G E T T E R S

  */
  List<Food> get menu=>_menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress=> _deliveryAddress;

  /*

  O P E R A T I O N S

  */



  //add to cart
  void addToCart(Food food, List<AddOn> selectedAddOns) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem= _cart.firstWhereOrNull((item) {
      //check if the food items are the same.
    bool isSameFood=item.food== food;

      //check if the list of selected addons are the same
    bool isSameAddons=
      ListEquality().equals(item.selectedAddOns, selectedAddOns);

    return isSameFood&&isSameAddons;
    });

// if item already exists, just increase quantity
    if(cartItem!=null){
      cartItem.quantity++;
    }

  //otherwise , add a new cart item to the cart
  else{
    _cart.add(
      CartItem(
        food:food,
        selectedAddOns:selectedAddOns,
      ));
   } 
   notifyListeners(); 
  }

  //remove from cart
  void removeFromCart(CartItem cartItem){
    int cartIndex=_cart.indexOf(cartItem);

    if(cartIndex!=-1){
      if(_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total=0.0;

    for(CartItem cartItem in _cart){
      double itemTotal=cartItem.food.price;

      for(AddOn addon in cartItem.selectedAddOns){
        itemTotal+=addon.price;
      }
      total+=itemTotal*cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount(){
    int totalItemCount=0;
    
    for(CartItem cartItem in _cart){
      totalItemCount+=cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress=newAddress;
    notifyListeners();
  }

  /*
  
 H E L P E R  S

  */

  //generate receipt
  String DisplayCartReceipt(){
    final receipt =StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    //format the date to include upto seconds only
    String formattedDate=
       DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for(final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity}*${cartItem.food.name} -${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddOns.isNotEmpty){
        receipt
            .writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddOns)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List <AddOn> addons){
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(" ,");
  }



}