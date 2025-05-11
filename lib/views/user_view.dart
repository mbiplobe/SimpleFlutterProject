import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/counter_view_model.dart'; // Ensure correct path

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserViewModel(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Test MVVM')),
        body: Consumer<UserViewModel>(
          builder: (context, viewmodel, child) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Hello"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
