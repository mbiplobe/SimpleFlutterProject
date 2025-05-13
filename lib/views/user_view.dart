import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';
import '../view_models/counter_view_model.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserViewModel(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Test MVVM')),
        body: Consumer<UserViewModel>(
          builder:
              (context, viewmodel, child) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: idController,
                              decoration: const InputDecoration(
                                labelText: 'Enter Id',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: 'Enter Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'Enter Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                var user = User(
                                  id: idController.text,
                                  name: nameController.text,
                                  email: emailController.text,
                                );

                                setState(() {
                                  viewmodel.addListItem(user);
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text("Add"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: Card(
                           color: Colors.white,
                          margin: EdgeInsets.all(4),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: ListView.builder(
                            itemCount: viewmodel.users.length,
                            itemBuilder: (context, index) {
                              final user = viewmodel.users[index];
                              return ListTile(
                                title: Text(user.name),
                                subtitle: Text(user.email),
                              );
                            },
                          ),
                        ),
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
