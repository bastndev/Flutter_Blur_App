import 'package:flutter/material.dart';

import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const[
          Background()
        ],
      ),
    );
  }
}
