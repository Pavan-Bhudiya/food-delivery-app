import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/cart_page.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySilverAppBar({
    super.key, 
    required this.child,
    required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // cart button
        IconButton(
          onPressed: (){
            // go to cart page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> const CartPage(),
                ),
                );
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title:const Text("Sunset Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: const Padding(
          padding: EdgeInsets.only(bottom: 50.0),
        ),
        
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left:0,right:0,top:0,),
        expandedTitleScale: 1,
        ),
    );
  }
}