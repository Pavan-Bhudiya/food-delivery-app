import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
   MyCurrentLocation({super.key});

  final textController=TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Your Location"),
        content:  TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: "Enter Address..."),
        ),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: (){
               Navigator.pop(context);
               textController.clear();
            },
            child: const Text("Cancel"),
          ),

          // save button
          MaterialButton(
            onPressed: (){
              //save address
              String newAddress=textController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
               Navigator.pop(context);
               textController.clear();
            },
            child: const Text("Cancel"),
          ),
        ],
      ),
    );
  }
         

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,top: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context,restaurant,child)=>Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
