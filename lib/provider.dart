import 'package:design/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class providerd with ChangeNotifier {
  List<String> tasks = [];
  List<String> usernamelist = [];
  List<String> passcodelist = [];

  providerd() {
    loadTask();
    notifyListeners();
  }

  Future<void> loadTask() async {
    final pref = await SharedPreferences.getInstance();
    tasks = pref.getStringList('tasks') ?? [];
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    saveTasks();
    notifyListeners();
  }

  addTask(String task) {
    tasks.add(task); 
    saveTasks();
    //taskname.clear();
    notifyListeners();
  }

  Future<void> saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tasks', tasks);
    notifyListeners();
  }

  providered() {
    loadLogin();
    notifyListeners();
  }


  Future<void> SaveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('username_value', usernamelist);
    prefs.setStringList('passcode_value', passcodelist);
  }

  void AddData(String username, String password) {
    usernamelist.add(username);
    passcodelist.add(password);
    SaveData();
  }
}

class ColorProvider with ChangeNotifier {

    Color currentColor = Color(0xff443a49);
     Color pickerColor = Color(0xff443a49);

  void saveCurrentColor() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('currentColor', currentColor.value);
    notifyListeners();
  }
  
  void loadCurrentColor() async {
    final prefs = await SharedPreferences.getInstance();
    final savedColor = prefs.getInt('currentColor');
    if (savedColor != null) {
        currentColor = Color(savedColor);
    }
  }
  ColorProvider(){
    loadCurrentColor();
    notifyListeners();
  }
   void changeColor(Color color) {
    pickerColor = color;
    notifyListeners();
  }
}
