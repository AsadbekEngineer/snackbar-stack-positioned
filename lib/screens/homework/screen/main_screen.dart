import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://ichef.bbci.co.uk/news/999/cpsprodpb/FCD4/production/_131942746_33.jpg'),
          ),
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Color.fromARGB(255, 227, 110, 14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Autumn Day",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Hello Jack",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerWithIcon(
                          ikon: CupertinoIcons.leaf_arrow_circlepath,
                          kolor: Colors.yellow),
                      ContainerWithIcon(
                          ikon: CupertinoIcons.headphones, kolor: Colors.blue),
                      ContainerWithIcon(
                          ikon: CupertinoIcons.airplane, kolor: Colors.purple),
                      ContainerWithIcon(
                          ikon: CupertinoIcons.add_circled_solid,
                          kolor: Colors.teal),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors
                            .black, // Make sure to specify color explicitly
                      ),
                      children: [
                        TextSpan(
                            text: 'Day ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: 'Schedule',
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ContainerforDaySchedule(
                            imageUrl:
                                'https://images.unsplash.com/photo-1605693858949-edcc8ba48c88?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhdmVzfGVufDB8fDB8fHww',
                            eventName: 'Wedding',
                            eventTime: '03 : 50'),
                        ContainerforDaySchedule(
                            imageUrl:
                                'https://images.unsplash.com/photo-1605693858949-edcc8ba48c88?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhdmVzfGVufDB8fDB8fHww',
                            eventName: 'Wedding',
                            eventTime: '03 : 50'),
                        ContainerforDaySchedule(
                            imageUrl:
                                'https://images.unsplash.com/photo-1605693858949-edcc8ba48c88?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhdmVzfGVufDB8fDB8fHww',
                            eventName: 'Wedding',
                            eventTime: '03 : 50'),
                        ContainerforDaySchedule(
                            imageUrl:
                                'https://images.unsplash.com/photo-1605693858949-edcc8ba48c88?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhdmVzfGVufDB8fDB8fHww',
                            eventName: 'Wedding',
                            eventTime: '03 : 50'),
                        ContainerforDaySchedule(
                            imageUrl:
                                'https://images.unsplash.com/photo-1605693858949-edcc8ba48c88?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhdmVzfGVufDB8fDB8fHww',
                            eventName: 'Wedding',
                            eventTime: '03 : 50'),
                        ContainerforDaySchedule(
                            imageUrl:
                                'https://images.unsplash.com/photo-1605693858949-edcc8ba48c88?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhdmVzfGVufDB8fDB8fHww',
                            eventName: 'Wedding',
                            eventTime: '03 : 50'),
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

class ContainerWithIcon extends StatelessWidget {
  IconData ikon;
  Color kolor;
  ContainerWithIcon({required this.ikon, required this.kolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kolor,
      ),
      child: Icon(ikon),
    );
  }
}

class ContainerforDaySchedule extends StatelessWidget {
  String imageUrl;
  String eventName;
  String eventTime;
  ContainerforDaySchedule(
      {required this.imageUrl,
      required this.eventName,
      required this.eventTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 120,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageUrl)),
          ),
        ),
        Text(
          eventName,
          style: TextStyle(fontSize: 18),
        ),
        Text(
          eventTime,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
