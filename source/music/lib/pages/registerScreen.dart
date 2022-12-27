import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:music/constrans/imageStrings.dart';
import 'package:music/constrans/properties.dart';
import 'package:music/pages/Home.dart';
import 'package:music/pages/loginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    TextEditingController Uname = TextEditingController();
    TextEditingController Uemail = TextEditingController();
    TextEditingController Uphone = TextEditingController();
    TextEditingController Upass = TextEditingController();
    TextEditingController UcPass = TextEditingController();


    return Material(
      child: Container(
        width: display.width > 500 ? 300 : display.width,
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                width: display.width > 500 ? 500 : display.width,
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_bfgchzaf.json',
                    fit: BoxFit.fitWidth),
              ),
              const Spacer(),
              const Text(
                "Sign up",
                style: TextStyle(
                  fontFamily: "Josefin Sans",
                  fontWeight: FontWeight.w800,
                  fontSize: 42.0,
                ),
              ),
              const Spacer(),
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
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Or, register with email...",
                style: regularPageNote,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
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
                        controller: Uname,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 16),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Name",
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                        controller: Uemail,
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
                    const SizedBox(height: 10),
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
                        controller: Uphone,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 16),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Phone Number",
                          prefixIcon: Icon(
                            Icons.phone_android,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                        controller: Upass,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 16),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                        controller: UcPass,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 16),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Confirm Password",
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const loginScreen_(),));
                },
                child: roundedEdgeButton(
                    lableText: 'Submit',
                    buttonHeight: 48,
                    buttonWidth: 200,
                    lableTextStyle: regulatInnerButtonStyle),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
