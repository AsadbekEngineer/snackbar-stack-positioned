import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 219, 156),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/proxy/lm0RGILtl7jUHtdoRmY4obsSB3Ivj1MhcgmxTiFLlVO12yHkvldaGlumXCsz2g2q5gYqX_MovifCdmqKD3lMo8iZoQfa3-Qd1zpVZsGkxil-E-at0jreB4L7rl2jt3eRAxJCDly_gdo"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jack",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Party organizer",
                      style: TextStyle(fontSize: 15),
                    ),
                    Chip(
                      backgroundColor: Colors.orange,
                      label: Text(
                        "Read More",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: Container(
              height: 600,
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        children: [
                          TextSpan(
                            text: 'October ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "Holidays", style: TextStyle())
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OctoberHoliday(
                      imageUrl:
                          'https://c.ekstatic.net/ecl/explore-destination/beach/beach-view-with-clear-blue-water-w800x600.jpg',
                      name: 'Beach',
                      price: '\$ 2500.0'),
                  OctoberHoliday(
                      imageUrl:
                          'https://i0.wp.com/anchor.hope.edu/wp-content/uploads/2019/11/christmas-1.png?fit=647%2C377&ssl=1',
                      name: 'Christmas',
                      price: '\$ 4050.0'),
                  OctoberHoliday(
                      imageUrl:
                          'https://media.cnn.com/api/v1/images/stellar/prod/211217175851-holiday-lights-stock.jpg?q=h_2225,w_3956,x_0,y_0',
                      name: 'New Year',
                      price: '\$ 1900.0'),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 23,
                      ),
                      children: [
                        TextSpan(
                          text: "Party ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "planning")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PartyPlanningContainer(
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                          text: "Birthdays",
                        ),
                        PartyPlanningContainer(
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                          text: "Birthdays",
                        ),
                        PartyPlanningContainer(
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                          text: "Birthdays",
                        ),
                        PartyPlanningContainer(
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                          text: "Birthdays",
                        ),
                        PartyPlanningContainer(
                          imageUrl:
                              'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                          text: "Birthdays",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OctoberHoliday extends StatelessWidget {
  String imageUrl;
  String name;
  String price;

  OctoberHoliday(
      {required this.imageUrl, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    price,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Chip(
                label: Text("View"),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

class PartyPlanningContainer extends StatelessWidget {
  String imageUrl;
  String text;

  PartyPlanningContainer({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 120,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              )),
        ),
        Text(text),
      ],
    );
  }
}
