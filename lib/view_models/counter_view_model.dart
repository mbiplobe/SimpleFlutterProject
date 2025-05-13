import 'package:first_sample_project/models/counter_model.dart';
import 'package:flutter/material.dart';

class UserViewModel extends ChangeNotifier 
{
    final List<User> _userList= [];
    List<User> get users => _userList;
    

    void addListItem(User user) {
        _userList.add(user);
        notifyListeners();
    }

    void deleteItem(String id)
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