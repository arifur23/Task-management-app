import 'package:flutter/material.dart';
import 'package:task_management_app/Screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: size.height * .6,
              width: size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 20,
                    child: Container(
                      height: size.height * .24,
                      width: size.width * .31,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)),
                        color: Color(0xffffbd93)
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * .11,
                      left: size.width * .08,
                      child: Container(
                        height: size.height * .11,
                        width: size.height * .11,
                        decoration: BoxDecoration(
                          color: const Color(0xff0a0a0a),
                          borderRadius: BorderRadius.circular(100)
                        ),
                      )
                  ),
                  Positioned(
                    right: 0,
                      top: size.height * .09,
                      child: Container(
                        height: size.height * .15,
                        width: size.width * .6,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFf4ebbd),
                              Color(0xFF8577e7),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 1.0],
                            tileMode: TileMode.repeated,
                          )
                        ),
                      )
                  ),
                  Positioned(
                      left: 0,
                      top: size.height * .27,
                      child: Container(
                        height: size.height * .15,
                        width: size.width * .8,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
                            color: Colors.white
                        ),
                      )
                  ),
                  Positioned(
                      right: 0,
                      top: size.height * .45,
                      child: Container(
                        height: size.height * .15,
                        width: size.width * .8,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
                            color: Color(0xff333333)
                        ),
                      )
                  ),
                ],
              ),
            ),
             SizedBox(height: size.height * .044,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: (size.height * .38 ) - size.height * .024,
                width: size.width,
                child: Column(
                  children: [
                    Container(
                      height: size.height * .263,
                      width: size.width * .9,
                      child: const Text('Create Your '
                          'Tasks And Manage Your Work',
                      style: TextStyle(color: Colors.white ,fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ),
                     SizedBox(height: size.height * .01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                          },
                          child: Container(
                            height: 40,
                            width: 90,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFf4ebbd),
                                    Color(0xFF8577e7),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp,
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Skip', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                  Icon(Icons.arrow_forward, color: Colors.black, size: 15,)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
