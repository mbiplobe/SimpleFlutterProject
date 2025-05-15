import 'package:first_sample_project/view_models/registration_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrationView extends StatefulWidget
{
  
  const RegistrationView({super.key});


   @override
  // ignore: library_private_types_in_public_api
  _RegistrationState createState() => _RegistrationState();

}

class _RegistrationState extends State<RegistrationView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegistrationViewModel(),
      child: Scaffold(
     
        body: Consumer<RegistrationViewModel>(
          builder: (context, viewmodel, child) => Card(
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
                  Text("Create An Account",
                  style: TextStyle(fontSize: 12.3,
                  color: Color(0xFF491B6D),
                  ),
                  
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
