import 'package:covidapp/homeScreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3a48ed),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Image.asset(
            'assets/covid19/welcome.jpg',
            width: 400,
          ),
          Text(
            'Covid 19',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness and recover without hospitalization.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20),
                    ),
                    IconButton(
                        color: Color(0xff3a48ed),
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
