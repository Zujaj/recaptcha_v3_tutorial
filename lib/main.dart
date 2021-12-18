import 'package:flutter/material.dart';

import 'package:recaptcha_v3_tutorial/page/demo_page.dart';
import 'package:recaptcha_v3_tutorial/service/recaptcha_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RecaptchaService.initiate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google reCAPTCHA v3 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoPage(pageTitle: 'Google reCAPTCHA v3 Demo'),
    );
  }
}
