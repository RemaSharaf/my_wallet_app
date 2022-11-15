import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
       margin: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Image.asset(
            "images/mastercardlogo.png",
            width: size.width * 2 / 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const[
                   Text(
                    "**** **** **** ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                 
                   Text(
                    "1930",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
               SizedBox(height: size.height/70,),
              Text(
                "Platinum Card".toUpperCase(),
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
