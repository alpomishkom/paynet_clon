import 'package:flutter/material.dart';
import 'package:paynet_clone/screens/main/home/home_screens.dart';
import 'package:paynet_clone/screens/main/home/my_bottomNavigatorBar.dart';
import 'package:paynet_clone/screens/main/home/transaction/transaction_pages.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final Animation<Offset> _animationIcons;

  @override
  void initState()  {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween(end: 1.0, begin: .0).animate(_controller);
    _animationIcons = Tween(end: const Offset(0.0, 0.0), begin: const Offset(0.0, 0.3))
        .animate(_controller);
    _controller.forward();
    stack();
    super.initState();
  }
  Future<void> stack() async {
    return await Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation,
              child: SlideTransition(
                position: _animationIcons,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green[400],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            FadeTransition(
              opacity: _animation,
              child: const Text(
                "paynet",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
