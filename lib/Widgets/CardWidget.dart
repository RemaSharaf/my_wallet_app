import 'package:flutter/material.dart';
import 'package:my_wallet_app/Widgets/BankCard.dart';
import 'package:my_wallet_app/data.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Card Selected",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffbed3e7),
                  boxShadow: AppColors.shadow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(children: [
                  Positioned.fill(
                    top: 100,
                    bottom: -200,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          boxShadow: AppColors.shadow,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Positioned.fill(
                    top: -100,
                    bottom: -100,
                    left: -300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          boxShadow: AppColors.shadow,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          boxShadow: AppColors.shadow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  const Positioned(
                    child: BankCard(),
                  )
                ]),
              );
            },
          ),
        )
      ],
    );
  }
}
