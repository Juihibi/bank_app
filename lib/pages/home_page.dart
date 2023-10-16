import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:bank_app/widgets/my_card.dart';
import 'package:bank_app/widgets/my_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            //app bar text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //my cards text
                    Text(
                      'My',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Cards',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),

                //add icon
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            //my cards showing
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5.325,
                    cardNumber: 3205,
                    expiryMonth: 12,
                    expiryYear: 24,
                    color: Color(0xff346b98),
                  ),
                  MyCard(
                    balance: 3.640,
                    cardNumber: 1714,
                    expiryMonth: 06,
                    expiryYear: 24,
                    color: Color(0xffbeb42a),
                  ),
                  MyCard(
                    balance: 915.25,
                    cardNumber: 5624,
                    expiryMonth: 09,
                    expiryYear: 24,
                    color: Color(0xff9837b0),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // smooth page indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: Colors.blue.shade800,
              ),
            ),

            const SizedBox(height: 50),

            //3 buttons  send pay bills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(title: 'Pay', imagePath: 'assets/images/pay.png'),
                MyButton(
                    title: 'Send', imagePath: 'assets/images/send_money.png'),
                MyButton(title: 'Bills', imagePath: 'assets/images/bills.png'),
              ],
            ),

            const SizedBox(height: 25),

            //statistic listTile
            ListTile(
              leading: Container(
                child: Transform.scale(
                  scale: 1.2,
                  child: Image.asset('assets/images/statistics.png'),
                ),
                //color: Colors.white,
              ),
              title: Text('Satatistics',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Text(
                'Payments and income ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: Icon(Icons.chevron_right),
              tileColor: Colors.grey[350],
            ),

            const SizedBox(height: 20),

            //transaction
            ListTile(
              leading: Container(
                child: Transform.scale(
                  scale: 1.3,
                  child: Image.asset('assets/images/transaction.png'),
                ),
                //color: Colors.white,
              ),
              title: Text('Transactions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Text(
                'Transaction history',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: Icon(Icons.chevron_right),
              tileColor: Colors.grey[350],
            ),

            //the bittom navigation bar

            //
          ],
        ),
      ),
    );
  }
}
