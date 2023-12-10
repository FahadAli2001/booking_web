import 'package:flutter/material.dart';

class FlightDetailScreen extends StatefulWidget {
  const FlightDetailScreen({super.key});

  @override
  State<FlightDetailScreen> createState() => _FlightDetailScreenState();
}

class _FlightDetailScreenState extends State<FlightDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        width: size.width,
        height: size.height,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}