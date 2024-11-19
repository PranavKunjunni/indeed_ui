import 'package:flutter/material.dart';
import 'package:indeed_ui/utils/buttons.dart';
import 'package:indeed_ui/utils/images_contstants.dart';
import 'package:indeed_ui/utils/outlinebutton.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(Imagescontstants2.firstlog),
                  Text(
                    "The world's no.1 job search site",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  buttons(),
                  SizedBox(height: 10),
                  outlinebutton(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "By using Indeed, you agree and consent to our",
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          "Terms of Services",
                          style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Cookie Policy",
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 10),
                    Text(
                          "Your Privacy Choices",
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
