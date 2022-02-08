
import 'package:flutter/material.dart';
import 'package:food_order_ui/models/kitchens_json.dart';
import 'package:food_order_ui/utils/constants.dart';
import 'package:food_order_ui/utils/store_card.dart';
class Kitchens extends StatefulWidget {
  const Kitchens({Key? key}) : super(key: key);

  @override
  _KitchensState createState() => _KitchensState();
}

class _KitchensState extends State<Kitchens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xFFEDEEF1)),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  left: 20, right: 20),
              child: Text(
                "Special Offers",
                style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(storeItems.length, (index) {
                  var store = storeItems[index];
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          child: StoreCard(width: 280, store: store),
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding:
                    const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        child: StoreCard(width: 280, store: store),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
