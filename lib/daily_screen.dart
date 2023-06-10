import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'colors.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({super.key});

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 10),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 25, right: 20, left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bar_chart),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/manohar.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: (size.width - 40) * 0.6,
                          child: Column(
                            children: [
                              Text(
                                "Manohar Acharya",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Flutter Developer",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MoneyHolder(amount: "\$100k", text: "Income"),
                        Container(
                          width: 0.5,
                          height: 50,
                          color: black.withOpacity(0.3),
                        ),
                        MoneyHolder(amount: "\$40k", text: "Expenses"),
                        Container(
                          width: 0.5,
                          height: 50,
                          color: black.withOpacity(0.3),
                        ),
                        MoneyHolder(amount: "\$010k", text: "Loan"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: mainFontColor,
                        ),
                      ),
                      // IconBadge(
                      //   icon: Icon(Icons.notifications_none),
                      //   itemCount: 0,
                      // ),
                    ],
                  ),
                  Text(
                    "June 10, 2023",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: mainFontColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: grey.withOpacity(0.03),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 20, right: 20, bottom: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//DRY
class MoneyHolder extends StatelessWidget {
  const MoneyHolder({
    super.key,
    required this.amount,
    required this.text,
  });

  final String amount;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          amount,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: mainFontColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: mainFontColor,
          ),
        ),
      ],
    );
  }
}
