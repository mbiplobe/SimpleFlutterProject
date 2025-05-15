import 'package:first_sample_project/view_models/counter_view_model.dart';
import 'package:first_sample_project/views/registration_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserViewModel(),
      child: MaterialApp(
        theme: ThemeData(
         fontFamily: 'Poppins',
        ),
        home: RegistrationView(),
      ),
    ),
  );
}
