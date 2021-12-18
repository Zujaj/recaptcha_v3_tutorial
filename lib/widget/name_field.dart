import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A custom [TextFormField] that takes the name of a person.
///
/// It only accepts alphabetical text. Minimum three characters are `required`.
class NameField extends StatelessWidget {
  const NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      inputFormatters: [
        FilteringTextInputFormatter(RegExp('[\u0621-\u064A a-z A-Z]'),
            allow: true)
      ],
      decoration: const InputDecoration(
        labelText: 'Name',
        hintText: 'Muhamad Javed Ali Khan',
        border: OutlineInputBorder(),
      ),
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) =>
          value!.length < 3 ? 'Name should be at least three letters' : null,
      onSaved: (value) => log('User Name is ' + value!),
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (value) => FocusScope.of(context).nextFocus(),
    );
  }
}
