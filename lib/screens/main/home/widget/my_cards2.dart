import 'package:flutter/material.dart';

class MyCards2 extends StatelessWidget {
  const MyCards2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      height: MediaQuery.of(context).size.height / 3.3,
      child: Row(
        children: [
          Expanded(
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
                  const Spacer(),
                  Stack(
                    children: [
                      SizedBox(
                        height: 100,
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              transform: const GradientRotation(1),
                              colors: [
                                Colors.orange.shade900,
                                Colors.orangeAccent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 17,
                                      backgroundImage:
                                          AssetImage('assets/tbc.jpeg'),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      'assets/humo.png',
                                      scale: 4,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 7),
                                 Row(
                                  children: [
                                    const Text(
                                      '334 000 ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'so\'m',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey.shade300,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Text(
                                  'HUMO',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Keshbek-hisob',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 17),
                    Text(
                      '   Balans',
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                    Row(
                      children: [
                        Text(
                          '  1 550  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'so\'m',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Bugun',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 47,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green,
                                    ),
                                    child: const Row(
                                      children: [
                                        Text(
                                          ' 80',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'so\'m',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.green,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 10,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const SizedBox(height: 8),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
