import 'package:juice/detailjus.dart';
import 'package:juice/detailjuss.dart';
import 'package:juice/detailjusss.dart';
import 'package:juice/detailjussss.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juice/homepage.dart';

class Mydesain extends StatelessWidget {
  const Mydesain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juice List'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailJus(),
                            ));
                      },
                      child: Image.asset(
                        "img/juice1.png",
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Juice Cherry'),
                        Text('Rp. 15.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailJuss(),
                            ));
                      },
                      child: Image.asset(
                        'img/juice2.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Juice Banana'),
                        Text('Rp. 12.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailJusss(),
                            ));
                      },
                      child: Image.asset(
                        'img/juice3.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Juice Kiwi'),
                        Text('Rp. 20.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailJussss(),
                            ));
                      },
                      child: Image.asset(
                        'img/juice4.png',
                        width: 100,
                        height: 150,
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Juice Grape'),
                        Text('Rp. 25.000'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
