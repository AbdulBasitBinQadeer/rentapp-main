import 'package:flutter/material.dart';
import 'package:rentapp/presentation/pages/car_list_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ghghg.png'),
                  fit: BoxFit.fitHeight
                )
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Premium Sports Cars. \nEnjoy the Luxury',
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Premium & Luxury Sports car daily rental. \nExperience the thrill at a lower price',
                    style: TextStyle(color: Colors.blueGrey[50], fontSize: 16),
                  ),
                  SizedBox(height: 25,),
                  Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CarListScreen()));
                            },
                            child: Container(
                              height: 55,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                      blurRadius: 10,
                                      spreadRadius: 1
                                  ),
                                ]
                              ),
                              child: Center(
                                child: Text(
                                  'Let\'s Go',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              )
                            ),
                          ),
                        ),
                      ],
                    ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



