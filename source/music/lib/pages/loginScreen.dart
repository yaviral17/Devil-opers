import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music/constrans/imageStrings.dart';
import 'package:music/constrans/properties.dart';
import 'package:music/pages/Home.dart';
import 'package:music/pages/registerScreen.dart';

class loginScreen_ extends StatefulWidget {
  const loginScreen_({super.key});

  @override
  State<loginScreen_> createState() => _loginScreen_State();
}

class _loginScreen_State extends State<loginScreen_> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Container(
          height: display.height,
          width: display.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10.0),
                  width: display.width > 500 ? 500 : display.width,
                  child: Lottie.asset(boyListning, fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  height: display.height * (6 / 100),
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "Josefin Sans",
                    fontWeight: FontWeight.w800,
                    fontSize: 42.0,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        width: display.width > 500
                            ? 350
                            : display.width * (85 / 100),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              // spreadRadius: 1,
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: TextFormField(
                          controller: username,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 16),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.alternate_email,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Center(
                        child: Container(
                          width: display.width > 500
                              ? 350
                              : display.width * (85 / 100),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                // spreadRadius: 1,
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              TextFormField(
                                controller: password,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 16),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: "Password",
                                  prefixIcon: Icon(
                                    Icons.lock_outline_rounded,
                                  ),
                                ),
                              ),
                              Container(
                                height: 44,
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text("Forget?"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height:16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                        },
                        child: roundedEdgeButton(
                          buttonHeight: 48,
                          buttonWidth: display.width > 500? 300 :display.width * (60 / 100),
                          lableText: "Login",
                          lableTextStyle: regulatInnerButtonStyle,
                          buttonEdgeRadius: 12,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Or, login with...",
                        style: regularPageNote,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    authIcons(
                      innerImage: 'assets/images/google_logo.png',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    authIcons(
                      innerImage: 'assets/images/facebook_logo.png',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    authIcons(
                      innerImage: 'assets/images/apple_logo.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: display.height * (5 / 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?"),
                    GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),));
                      },
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ));
                        },
                        child: Text("Register"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class authIcons extends StatelessWidget {
  final String innerImage;
  const authIcons({
    super.key,
    required this.innerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 55,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 9,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Image.asset(innerImage),
    );
  }
}

class roundedEdgeButton extends StatelessWidget {
  String lableText;
  double buttonHeight;
  double buttonWidth;
  Color buttonBackgroundColor;
  TextStyle lableTextStyle;
  double buttonEdgeRadius;
  roundedEdgeButton({
    super.key,
    required this.lableText,
    required this.buttonHeight,
    required this.buttonWidth,
    this.buttonBackgroundColor = Colors.blue,
    required this.lableTextStyle,
    this.buttonEdgeRadius = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      alignment: Alignment.center,
      width: buttonWidth,
      decoration: BoxDecoration(
        color: buttonBackgroundColor,
        borderRadius: BorderRadius.circular(
          buttonEdgeRadius,
        ),
      ),
      child: Text(
        lableText,
        style: lableTextStyle,
      ),
    );
  }
}
