import 'package:first_sample_project/view_models/registration_view_model.dart';
import 'package:first_sample_project/widgets/custom_buttomn_widget.dart';
import 'package:first_sample_project/widgets/custom_flat_button.dart';
import 'package:first_sample_project/widgets/custom_text_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegistrationViewModel(),
      child: Scaffold(
        body: Consumer<RegistrationViewModel>(
          builder:
              (context, viewmodel, child) => Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create An Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF491B6D),
                        ),
                      ),
                      CustomTextFiledWidget(
                        label: 'Name',
                        hintText: 'Enter your name',
                        controller: _nameController,
                        obscureText: false,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your name';
                          }
                          return null;
                        },
                        labelColor: Color(0xFF491B6D),
                      ),

                      CustomTextFiledWidget(
                        label: 'Email',
                        hintText: 'Enter your mail',
                        controller: _emailController,
                        obscureText: false,
                        prefixIcon: Icons.mail,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your mail';
                          }
                          return null;
                        },
                        labelColor: Color(0xFF491B6D),
                      ),

                      CustomTextFiledWidget(
                        label: 'Password',
                        hintText: 'Enter your password',
                        controller: _passwordController,
                        obscureText: true,
                        prefixIcon: Icons.lock,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        labelColor: Color(0xFF491B6D),
                      ),
                      CustomTextFiledWidget(
                        label: 'Confirmed Password',
                        hintText: 'Enter your password again',
                        controller: _confirmPasswordController,
                        obscureText: true,
                        prefixIcon: Icons.lock,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your password again';
                          }
                          return null;
                        },
                        labelColor: Color(0xFF491B6D),
                      ),

                      SizedBox(height: 10),

                      CustomButton(text: "Click Me", onPressed: () {}),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CustomFlatButton(
                          label: "Have an account already?",
                          text: "Log In",
                          onPressed: () {},
                        ),
                        ]
                      ),
                    
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
