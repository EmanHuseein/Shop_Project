import 'package:flutter/material.dart';
import 'package:untitled/constant/counter_list.dart';
import 'package:untitled/widgets/shop_image.dart';
import 'package:untitled/widgets/shop_rows.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const ShopImage(),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ShopRows(counterItemModel: counterList[index]);
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 15,
                      ),
                  itemCount: counterList.length),
            ],
          ),
        ),
      ),
    );
  }
}
