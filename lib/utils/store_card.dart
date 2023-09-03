import 'package:flutter/material.dart';
import 'package:food_order_ui/utils/constants.dart';
import 'package:food_order_ui/utils/helper.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({super.key, required this.store, this.width = 250});

  final  store;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: this.width,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                getImageNetwork(store["image"]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  store["is_open"] ? "open" : "close",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: store["is_open"] ? Colors.green[900] : textColor,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  store["name"] ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.watch_later_outlined),
                      onPressed: null,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Est: "+ store["delivery_time"],
                      style: TextStyle(
                        color:textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}