import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4fa),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        shadowColor: Colors.transparent,
        toolbarHeight: 200,
        title: Column(
          children: [
            Text(
              'Hi Codetodo',
              style: TextStyle(fontSize: 28),
            ),
            Text('Stay Safe Stay Secure', style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  Search Here'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 70,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            color: Color(0xff3a48ed),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Symptoms', style: TextStyle(fontSize: 22)),
                Text('View All',
                    style: TextStyle(fontSize: 20, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/covid19/symptoms.jpg'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'High Fever',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'A high fever is when the body \ntemperature rises above  \n103 degrees Fahrenheit in an adult'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/covid19/symptoms.jpg'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'High Fever',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'A high fever is when the body \ntemperature rises above  \n103 degrees Fahrenheit in an adult'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Banner
            Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xff3a48ed),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stay Safe ',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text('Wear Mask',
                            style: TextStyle(fontSize: 18, color: Colors.white))
                      ],
                    ),
                    Image.asset('assets/covid19/banner.jpg'),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Requirements', style: TextStyle(fontSize: 22)),
                Text('View All',
                    style: TextStyle(fontSize: 20, color: Colors.grey)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/covid19/1.jpg',width: 70,),
                Image.asset('assets/covid19/2.jpg',width: 70,),
                Image.asset('assets/covid19/3.jpg',width: 70,),
                
                Image.asset('assets/covid19/4.jpg',width: 70,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
