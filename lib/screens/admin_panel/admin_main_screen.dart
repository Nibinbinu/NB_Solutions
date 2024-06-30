import 'package:flutter/material.dart';

import '../../widgets/custom_drawer_widget.dart';


class AdminMainScreen extends StatefulWidget {
  const AdminMainScreen({super.key});

  @override
  State<AdminMainScreen> createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin panel"),
      ),
      body: const CustomDrawerWidget(),
    );
  }
}
