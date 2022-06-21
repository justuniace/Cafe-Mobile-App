import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/cart/components/cart_item_card.dart';
import 'package:coffee_app/model/product_model.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: Carts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
              key: Key(Carts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColor.lightBrownColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg"),
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  Carts.removeAt(index);
                });
              },
              child: CartItemCard(cart: Carts[0])),
        ),
      ),
    );
  }
}
