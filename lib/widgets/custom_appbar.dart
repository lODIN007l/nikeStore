import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/nike_w.png'),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_bag_outlined)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
