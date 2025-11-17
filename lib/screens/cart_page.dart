
import 'package:flutter/material.dart';
import 'package:flutter_create_madshop_ui_sopina/theme/app_colors.dart';
import 'package:flutter_create_madshop_ui_sopina/theme/app_text_styles.dart';
import 'package:flutter_create_madshop_ui_sopina/widgets/app_button.dart';
import 'package:flutter_create_madshop_ui_sopina/widgets/app_product_card_order.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
              children: [
                Text(
                  'Cart',
                  style: AppTextStyles.headlineSmall,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColors.gray,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '3',
                    style: AppTextStyles.contextMediumSmallBold,
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              crossAxisCount: 1,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 3,
              children: const [
                AppProductCardOrder(
                  imagePath: 'assets/images/example1.png',
                  title: 'Текстовое название 1',
                  option: 'Pink, Size M',
                  price: '1300 ₽',
                ),
                AppProductCardOrder(
                  imagePath: 'assets/images/example2.png',
                  title: 'Текстовое название 2',
                  option: 'Blue, Size L',
                  price: '5000 ₽',
                ),
                AppProductCardOrder(
                  imagePath: 'assets/images/example3.png',
                  title: 'Текстовое название 3',
                  option: 'Black, Size S',
                  price: '1000 ₽',
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.gray,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: 8000 ₽',
                  style: AppTextStyles.headlineSmall,
                ),
                SizedBox(
                  width: 160,
                  child: AppButton(
                    label: 'Checkout',
                    onPressed: () => {},
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
