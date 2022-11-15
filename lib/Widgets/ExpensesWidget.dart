import 'package:flutter/material.dart';
import 'package:my_wallet_app/Widgets/PieChart.dart';
import 'package:my_wallet_app/data.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Monthly Expenses",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  buttonBox(Icons.arrow_back_ios),
                  buttonBox(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * .04,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: category.map((data) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.pieColors[category.indexOf(data)],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          data['name'],
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              )),
              const Expanded(child: PieChart())
            ],
          )
        ],
      ),
    );
  }
}

Widget buttonBox(IconData icon) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: 35,
    height: 35,
    decoration: BoxDecoration(
      color: AppColors.primary,
      boxShadow: AppColors.shadow,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(
      icon,
      size: 17,
    ),
  );
}
