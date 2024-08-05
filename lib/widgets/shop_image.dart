import 'package:flutter/cupertino.dart';

class ShopImage extends StatelessWidget {
  const ShopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.75,
            child: const Image(
              image: AssetImage('assets/images/young man shopping.png'),
            ),
          );
  }
}
