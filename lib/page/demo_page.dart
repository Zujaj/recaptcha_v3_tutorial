import 'package:flutter/material.dart';
import 'package:recaptcha_v3_tutorial/service/recaptcha_service.dart';
import 'package:recaptcha_v3_tutorial/widget/info_dialog.dart';
import 'package:recaptcha_v3_tutorial/widget/name_field.dart';

class DemoPage extends StatelessWidget {
  /// Holds a [GlobalKey<FormState>] to control the [FormState].
  final _registrationFormKey = GlobalKey<FormState>();

  /// Holds the [AppBar] title.
  final String pageTitle;

  DemoPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTitle)),
      body: Column(
        children: [
          const SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(
                size: 100,
              ),
              SizedBox(width: 10),
              Text(
                'Web Form',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 50),
              )
            ],
          ),
          const SizedBox(height: 90),
          Form(
            key: _registrationFormKey,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(30), child: NameField()),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () async {
                      if (_registrationFormKey.currentState!.validate()) {
                        var _isNotABot = await RecaptchaService.isNotABot();
                        debugPrint(_isNotABot.toString());
                        if (_isNotABot) {
                          _registrationFormKey.currentState!.save();

                          return await showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) => const InfoDialog(
                                    key: Key('a'),
                                    title: 'Congratulations!',
                                    message: 'You are a human.',
                                  ));
                        } else {
                          return await showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (context) => const InfoDialog(
                                    title: 'Warning!',
                                    message: 'Bots not allowed!',
                                  ));
                        }
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('All Fields are required'),
                        ));
                      }
                    },
                    child: const Text('Submit'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
