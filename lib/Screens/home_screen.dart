import 'package:flutter/material.dart';
import 'package:task_management_app/Widgets/my_paint_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff0a0a0a),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Container(
            height: size.height * .4,
            width: size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1BwYl1Svb2h_YRhj9tcnZk0yAuIHh3oBM03dzDa8f&s',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            children: const [
                              Text('Welcome Jamie!', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),),
                              SizedBox(height: 6,),
                              Text('Explore Tasks', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white.withOpacity(.6),width: 2),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child:  Center(
                          child: Stack(
                            children: [
                              const Icon(Icons.mail, color: Colors.white,),
                              Positioned(
                                top: 0,
                                right: -2,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 100,
                    width: size.width - 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xff1d1d1d)
                                  ),
                                  child: CustomPaint(
                                    painter: MyPaintWidget(
                                        colors: [
                                          Colors.green,
                                          Colors.red,
                                          Colors.yellow,
                                          Colors.blue,
                                        ],
                                      stops: [
                                        0.0,
                                        0.5,
                                        0.7,
                                        1.0,
                                      ]
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 36,
                                    left: 32,
                                    child: Text('70%', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),)
                                )
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 28.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Task', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                                  SizedBox(height: 2,),
                                  Text('Completed', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.calendar_today_rounded,color: Colors.black, size: 20,),
                                Text('Mar 22', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

          ),
          Container(
            height: size.height * .545,
            width: size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: size.width - 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Your Tasks', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),
                            SizedBox(height: 5,),
                            Text('(7/10) Completed', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.black),),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
