import 'package:flutter/material.dart';
import 'package:flutter_create_madshop_ui_sopina/theme/app_text_styles.dart';
import 'package:flutter_create_madshop_ui_sopina/widgets/app_input.dart';
import 'package:flutter_create_madshop_ui_sopina/widgets/app_product_card.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shop',
                  style: AppTextStyles.headlineSmall,
                ),
                SizedBox(width: 19),
                Expanded(
                  child: AppInput(
                    placeholder: 'Clothing',
                    isBlue: true,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 12,
              childAspectRatio: 0.68,
              children: const [
                AppProductCard(
                  imagePath: 'assets/images/example1.png',
                  title: 'Текстовое название 1',
                  price: '1 300 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example2.png',
                  title: 'Текстовое название 2',
                  price: '5000 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example3.png',
                  title: 'Текстовое название 3',
                  price: '1 000 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example4.png',
                  title: 'Текстовое название 4',
                  price: '2000 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example5.png',
                  title: 'Текстовое название 5',
                  price: '1100 ₽',
                ),
                AppProductCard(
                  imagePath: 'assets/images/example6.png',
                  title: 'Текстовое название 6',
                  price: '2150 ₽',
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}