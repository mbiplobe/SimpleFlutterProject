import 'package:first_sample_project/widgets/custom_buttomn_widget.dart';
import 'package:first_sample_project/widgets/custom_flat_button.dart';
import 'package:first_sample_project/widgets/custom_text_filed_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
    
  
  const LoginView({super.key});
  


  @override
  Widget build(BuildContext context) {
   final TextEditingController nameController = TextEditingController();
      final TextEditingController passwordController = TextEditingController();
   
   return Scaffold(
    body: Card(
          elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(10),
                color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                  CustomTextFiledWidget(
                        label: 'Name',
                        hintText: 'Enter your name',
                        controller: nameController,
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
                        label: 'Password',
                        hintText: 'Enter your password',
                        controller: passwordController,
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

                       SizedBox(height: 10),

                      CustomButton(text: "Login", onPressed: () {}),
                      SizedBox(height: 20),

                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFlatButton(
                          label: "If you don't have an account already",
                          text: "Signup",
                          onPressed: () {},
                        ),
                        ]
                      ),
              ],
            ),
          ),
    ),
   );
    
  }
}