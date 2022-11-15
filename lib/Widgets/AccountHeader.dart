import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Michael's Account",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: AppColors.primary,
                boxShadow: AppColors.shadow,
                shape: BoxShape.circle),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.orange[800],
                      boxShadow: AppColors.shadow,
                      shape: BoxShape.circle),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      boxShadow: AppColors.shadow,
                      shape: BoxShape.circle),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.notifications)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
