import 'package:flutter/material.dart';
import 'package:untitled/models/counter_item_model.dart';

class ShopRows extends StatefulWidget {
  const ShopRows({super.key, required this.counterItemModel});

  final CounterItemModel counterItemModel;

  @override
  State<ShopRows> createState() => _ShopRowsState();
}

class _ShopRowsState extends State<ShopRows> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${widget.counterItemModel.count}",
          style: const TextStyle(
            fontSize: 35,
          ),
        ),
        Text(
          widget.counterItemModel.text,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff9CDBA6)),
          child: IconButton(
            onPressed: () {
              widget.counterItemModel.subtract();
              setState(() {
              });
            },
            icon: const Icon(Icons.remove),
            iconSize: 30,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff9CDBA6)),
          child: IconButton(
            onPressed: () {
              widget.counterItemModel.add();
              setState(() {
              });
            },
            icon: const Icon(Icons.add),
            iconSize: 30,
          ),
        ),
      ],
    );
  }
}
