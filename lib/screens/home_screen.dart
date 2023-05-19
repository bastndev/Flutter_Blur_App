import 'package:flutter/material.dart';
import 'package:gradient_flutter/widgets/page_title.dart';

import '../widgets/background.dart';
import '../widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          // --- Background
          Background(),
          // --- HomeBody
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

// --- --- --- --- --- --- _HomeBody
class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // --- Titles
          PageTitle(),

          SizedBox(height: 20),
          // --- Card Table and Icon
          CardTable(),
        ],
      ),
    );
  }
}
