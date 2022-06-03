import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';  

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("hoooooo"),
      ),
    );
  }
}