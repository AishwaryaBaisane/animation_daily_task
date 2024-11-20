import 'package:animation_daily_task/utils/global.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void animation() {
    setState(() {
      isPlaneUp = !isPlaneUp;
      if (index == align.length - 1) {
        index = 0;
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation Container',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: isPlaneUp ? Colors.teal : Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: AnimatedContainer(
        padding: EdgeInsets.only(bottom: 100.0),
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              alignment: isPlaneUp ? Alignment.topCenter : align[index],
              child: Icon(
                Icons.flight,
                size: 40,
                color: isPlaneUp ? Colors.teal : Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: isPlaneUp ? Colors.teal : Colors.blue,
          label: Text(
            isPlaneUp ? 'Book Your Tickets Now ?' : 'Success. Ticket Booked!',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          icon: Icon(
            isPlaneUp ? Icons.verified : Icons.airplanemode_active,
            color: Colors.white,
          ),
          onPressed: animation),
    );
  }
}
