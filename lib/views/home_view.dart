import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(10),
                color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text("Hello Mujahid"),
                    ],
                ),
            ),
            
            ),
    ),
   );
  }

}