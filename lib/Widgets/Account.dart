import 'package:my_wallet_app/Widgets/AccountHeader.dart';
import 'package:my_wallet_app/Widgets/CardWidget.dart';
import 'package:my_wallet_app/Widgets/ExpensesWidget.dart';
import 'package:my_wallet_app/data.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: const [
            // AccountHeader(),
            Expanded(child: CardWidget()),
            Expanded(
              child: ExpensesWidget(),
            )
          ],
        ),
      ),
    );
  }
}
