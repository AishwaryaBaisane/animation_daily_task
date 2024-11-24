import 'package:flutter/material.dart';

class SpeedOfRotation extends StatefulWidget {
  const SpeedOfRotation({super.key});

  @override
  State<SpeedOfRotation> createState() => _SpeedOfRotationState();
}

class _SpeedOfRotationState extends State<SpeedOfRotation>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  int duration = 3;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: duration),
      lowerBound: 0,
      upperBound: 1,
    );
    animationController.repeat();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return RotationTransition(
                  turns: animationController,
                  child: SizedBox(
                      height: 250,
                      width: 250,
                      child: Image.asset(
                        'assets/earth.png',
                        fit: BoxFit.cover,
                      )),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 2,
            onPressed: () {
              setState(() {
                duration--;
                initialize();
              });
              print('srdtfyughoijuhytfrdserdtfyuhij');
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: 1,
            onPressed: () {
              setState(() {
                duration++;
                initialize();
                print('3456789876543456');
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
