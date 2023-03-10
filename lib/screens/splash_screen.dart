import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quipi/screens/notes_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 75, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Q",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                        Text(
                          "uipi",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 35),
                      child: const Text(
                        "create and access your notes easily 🗒️",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/splash_screen_image.png',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 180.0,
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NotesScreen()),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber.shade400),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Let's Go",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    )),
              ),
              const SizedBox(width: 50),
            ],
          ),
        ));
  }
}
