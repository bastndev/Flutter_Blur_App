import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.pie_chart,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pink,
            icon: Icons.card_membership_outlined,
            text: 'ID Card',
          ),
        ]),
        // === === === Two === === ===
        TableRow(children: [
          _SingleCard(
            color: Colors.yellow,
            icon: Icons.ac_unit_rounded,
            text: 'Ice Screen',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.radar,
            text: 'Focus',
          ),
        ]),
        // === === === Three=== === ===
        TableRow(children: [
          _SingleCard(
            color: Colors.black,
            icon: Icons.cable_rounded,
            text: 'changer',
          ),
          _SingleCard(
            color: Colors.lightBlueAccent,
            icon: Icons.mobile_screen_share,
            text: 'Mobile Share',
          ),
        ]),
        // === === === Four === === ===
        TableRow(children: [
          _SingleCard(
            color: Colors.orange,
            icon: Icons.wallet,
            text: 'wallet',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.monetization_on,
            text: 'Money',
          ),
        ]),
      ],
    );
  }
}

// --- --- --- --- --- --- _SingleCard
class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 40,
            child: Icon(icon, color: Colors.white, size: 45),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

// --- --- --- --- --- Card Background
class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 210,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(25)),
            // === === Circle and Icon === === 
            child: child,
          ),
        ),
      ),
    );
  }
}
