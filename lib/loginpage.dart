import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutterproject/signinpage.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final myFormKey = GlobalKey<FormState>();
  bool secure = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/img_1.png',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color(0xff020202).withOpacity(.67), BlendMode.softLight)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 120, bottom: 190),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome To',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Delius',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/image 1.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Hackslash',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 285,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Form(
                          key: myFormKey,
                          child: Column(
                            children: [
                              TextFormField(
                                  controller: usernameController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Username";
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 15),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff41BD73),
                                            width: 1.5)),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 7, top: 15),
                                      child: SizedBox(
                                          height: 29,
                                          width: 29,
                                          child: Image.asset(
                                            'assets/images/img_2.png',
                                            color: Color(0xff41BD73),
                                          )),
                                    ),
                                    prefixIconConstraints: BoxConstraints(
                                        maxHeight: 40,
                                        maxWidth: 40,
                                        minHeight: 0,
                                        minWidth: 0),
                                    hintText: 'Username or Email',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.5,
                                    ),
                                  )),
                              SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                  cursorColor: Colors.grey,
                                  controller: passwordController,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Password";
                                    }
                                    return null;
                                  },
                                  obscureText: secure,
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff41BD73),
                                              width: 1.5)),
                                      contentPadding: EdgeInsets.only(top: 15),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 7, top: 15),
                                        child: SizedBox(
                                            height: 29,
                                            width: 29,
                                            child: Image.asset(
                                              'assets/images/Icon_3.png',
                                              color: Color(0xff41BD73),
                                            )),
                                      ),
                                      prefixIconConstraints: BoxConstraints(
                                          maxHeight: 40,
                                          maxWidth: 40,
                                          minHeight: 0,
                                          minWidth: 0),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.5,
                                      ),
                                      suffixIcon: Transform.translate(
                                        offset: Offset(0, 3),
                                        child: IconButton(
                                          onPressed: () {
                                            if (secure) {
                                              secure = false;
                                            } else {
                                              secure = true;
                                            }
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            secure
                                                ? CupertinoIcons.eye
                                                : CupertinoIcons.eye_slash,
                                            color: Color(0xff696B6F),
                                            size: 19,
                                          ),
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                      EdgeInsets.zero)),
                                        ),
                                      ))),
                            ],
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 30,
                              width: 105,
                              child: OutlinedButton(
                                onPressed: () {
                                  if (myFormKey.currentState!.validate()) {}
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xff41BD73)),
                                    side: MaterialStateProperty.all(
                                        BorderSide.none)),
                              )),
                          SizedBox(
                            height: 0,
                          ),
                          Transform.translate(
                            offset: Offset(10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    color: Color(0xff5A5454),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-6, 0),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        color: Color(0xff41BD73),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero),
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: (TextStyle(
                                color: Color(0xff5A5454),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize:
                                  MaterialStateProperty.all(Size(0, 0)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
