import 'package:flutter/material.dart';

import '../data/utlity.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  List<String> labels = ['Transactions', 'Upcoming Bills'];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 120,
              child: main_container(),
            ),
          ],
        ),
      ),
    );
  }

  Container main_container() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 490,
      width: 330,
      child: Column(
        children: [
          SizedBox(height: 30),
          title(),
          SizedBox(height: 5),
          money(),
          SizedBox(height: 10),
          icon(),
          SizedBox(height: 0),
          icon_title(),
          SizedBox(height: 0),

        ],
      ),
    );
  }

  Padding icon_title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Add',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            'Pay',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            'Send',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Padding icon() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround  ,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.add_circle_outline_sharp,
                        color: Color(0xff368983),
                        size: 50,
                      ),
                    ),
                    // Text(
                    //     'Add',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    GestureDetector(
                      child: Icon(
                        Icons.qr_code,
                        size: 40,
                        color: Color(0xff368983),
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.send_outlined,
                        size: 40,
                        color: Color(0xff368983),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding money() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$ ${total()}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Padding title() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Total Balance',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Color(0xff368983),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 280,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Container(
                          height: 40,
                          width: 40,
                          color: Color.fromRGBO(250, 250, 250, 0.1),
                          child: Icon(
                            Icons.notification_add_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
