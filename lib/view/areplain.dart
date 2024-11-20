import 'package:flutter/material.dart';

class PlaneAnimationPage extends StatefulWidget {
  const PlaneAnimationPage({super.key});

  @override
  State<PlaneAnimationPage> createState() => _PlaneAnimationPageState();
}

class _PlaneAnimationPageState extends State<PlaneAnimationPage> {
  bool _isPlaneUp = false;
  int index = 0;

  final List<Alignment> align = [
    Alignment.bottomCenter,
    Alignment.topCenter,
    Alignment.bottomCenter,
  ];

  void _toggleAnimation() {
    setState(() {
      _isPlaneUp = !_isPlaneUp;
      if (index == align.length - 1) {
        index = 0;
      } else {
        index++;
      }
      print(index);
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
        backgroundColor: _isPlaneUp ? Colors.blue : Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: AnimatedContainer(
        padding: const EdgeInsets.only(top: 20),
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              alignment: _isPlaneUp ? Alignment.topCenter : align[index],
              child: Icon(
                Icons.flight,
                size: 48,
                color: _isPlaneUp ? Colors.blue : Colors.teal,
              ),
            ),
            Positioned(
              bottom: 20,
              left: MediaQuery.of(context).size.width * 0.32,
              child: ElevatedButton(
                onPressed: _toggleAnimation,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isPlaneUp ? Colors.blue : Colors.teal,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  _isPlaneUp
                      ? "Book Your Ticket Now ?"
                      : 'Success.Ticket Booked!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
