import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_button.dart';
import 'package:fooddeliveryapp/models/food.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn,
  bool>selectedAddOns={};

   FoodPage({
    super.key,
    required this.food,
    }){
      //initialize selected addons to be false
      for(AddOn addon in food.availableAddons){
        selectedAddOns[addon]=false;
      }
    }
  @override
  State<FoodPage> createState() => _FoodPageState();
}
class _FoodPageState extends State<FoodPage> {

  //method to add to cart
  void addToCart(Food food, Map<AddOn, bool>selectedAddOns){

  //close the current food page to go back to menu
  Navigator.pop(context);

  //format the selected addons
    List<AddOn>currentlySelectedAddons=[];
    for(AddOn addon in widget.food.availableAddons){
      if(widget.selectedAddOns[addon]==true){
        currentlySelectedAddons.add(addon);
      }
    }
    // add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //scaffold UI
      Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:Column(
          children: [
          //food image 
          Image.asset(widget.food.imagePath),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [          
            //food name 
          Text(
          widget.food.name,
           style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
            ),
            // food price
          Text(
            '\$' + widget.food.price.toString(),
             style:  TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,),
          ),
          const SizedBox(height: 10,),

          //food description
          Text(widget.food.description),

          const SizedBox(height: 10,),

          Divider(color: Theme.of(context).colorScheme.secondary),

          const SizedBox(height: 10,),

          //addons
           Text(
            "Add-ons",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
          ),
          ),
          
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
                ),
            child:ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: widget.food.availableAddons.length,
            itemBuilder: (context, index) { 
              // get invidividual addons
              AddOn addon=widget.food.availableAddons[index];

              //return check box UI
          return CheckboxListTile(
            title: Text(addon.name),
            subtitle: Text('\$${addon.price}',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              ),
              ),
            value: widget.selectedAddOns[addon], 
            onChanged: (bool? value){
              setState(() {
                widget.selectedAddOns[addon]=value!;
              });
            },
          );
  }, 
  )
          )
  ],
  ),
          ),


          //button -> add to cart
          MyButton(
            onTap: () =>addToCart(widget.food,widget.selectedAddOns),
           text: "Add to Cart",
           ),
           const SizedBox(height: 25,),
        ],
      ),
      ),
    ),

      //back button
      SafeArea(
       child:Opacity(
        opacity: 0.8,
        child:Container(
        margin:EdgeInsets.only(left: 25),
        decoration:BoxDecoration(
          color:Theme.of(context).colorScheme.secondary,
          shape: BoxShape.circle,
        ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios_rounded),
        onPressed: () => Navigator.pop(context),
        ),
      ),
     ),
   ),
  ],
);
  }
}