import 'package:flutter/material.dart';
import 'package:flutter_create_madshop_ui_sopina/screens/create_account_page.dart';
import 'package:flutter_create_madshop_ui_sopina/widgets/app_image_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  Future<void> _goToCreateAccountPage(BuildContext context) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (_) => CreateAccountPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppImageButton(
          onPressed: () => _goToCreateAccountPage(context),
          imagePath: 'assets/images/logo.png',
          size: 200,
        )
      ),
    );
  }
}