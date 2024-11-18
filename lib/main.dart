import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutterproject/loginpage.dart';
import 'package:testflutterproject/myprovider.dart';

import 'signinpage.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context)=> MyProvider())],
      child: MaterialApp(
        home: MyLoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
