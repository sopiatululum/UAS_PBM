import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juice/mydesain.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(25.0),
      child: ListView(
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            "Find Our Perfect healthy",
            //'Fresh Juices & Smoothies'
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),

          //widget 3
          Text(
            "Fersh Juices & Smoothies",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset(
            "img/juice1.png",
            width: 400,
            height: 350,
          ),

          //widget 4
          SizedBox(
            width: 5,
            height: 40,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Mydesain(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                ),
                child: const Text("Let's Drinks Healthy"),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
