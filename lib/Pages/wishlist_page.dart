import 'package:flutter/material.dart';
class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  WishlistPage_State createState() => WishlistPage_State();
}

class WishlistPage_State extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('Wishlist'),),
    );
  }
}
