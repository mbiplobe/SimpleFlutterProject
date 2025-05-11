import 'package:first_sample_project/models/counter_model.dart';
import 'package:flutter/material.dart';

class UserViewModel extends ChangeNotifier 
{
    final List<User> _userList= [];
    List<User> get users => _userList;
    

    void addListItem(int id, String name,String email) {
        _userList.add(User(id: id, name: name, email: email));
        notifyListeners();
    }

    void deleteItem(int id)
    {
        _userList.removeWhere((user)=> user.id == id);
        notifyListeners();

    }

    void clearAllitem()
    {
        _userList.clear();
        notifyListeners();
    }

    

}