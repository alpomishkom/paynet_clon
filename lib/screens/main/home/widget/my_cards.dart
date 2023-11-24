import 'package:flutter/material.dart';

class MyCard1 extends StatelessWidget {
  const MyCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.only(
          top: 14,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20,
            )
          ],
        ),
        width: 100,
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Kartalarim',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 14,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 70),
            Stack(
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        transform: const GradientRotation(1),
                        colors: [
                          Colors.blue.shade800,
                          const Color.fromARGB(
                            255,
                            142,
                            182,
                            250,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/tbc.jpeg'),
                  ),
                ),
                Positioned(
                  right: 8,
                  bottom: 45,
                  child: Image.asset(
                    'assets/humo.png',
                    scale: 5,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Row(
                    children: [
                      const Text(
                        ' 120 000',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ' so\'m',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300,
                        ),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  child: Text(
                    '  HUMO',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
