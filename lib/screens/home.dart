import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import 'chat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Meet the',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFD7CAE9)),
                  ),
                  Text(
                    'Echo Mind !',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF865FD2)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/bot.png'),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 360,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFD7CAE9),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: SliderButton(
                  action: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                    return false;
                  },
                  label: const Padding(
                      padding: EdgeInsets.only(left: 140),
                      child: Row(
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              color: Color(0xFFD7CAE9),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: Colors.white,
                            size: 30.0,
                          )
                        ],
                      )),
                  icon: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  boxShadow: BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                  ),
                  backgroundColor: Colors.transparent,
                  buttonColor: const Color(0xFF865FD2),
                  buttonSize: 60,
                  baseColor: const Color(0xFFD7CAE9),
                  alignLabel: Alignment.center,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
