

import 'package:flutter/material.dart';

class OzbekistonRussiyaPages extends StatefulWidget {
  const OzbekistonRussiyaPages({super.key});

  @override
  State<OzbekistonRussiyaPages> createState() => _OzbekistonRussiyaPagesState();
}

class _OzbekistonRussiyaPagesState extends State<OzbekistonRussiyaPages> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(0.0, 2),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: Center(
                      child: Form(
                        key: _globalKey,
                        child: SizedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/800px-Mastercard-logo.svg.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                suffixIcon: Icon(
                                  Icons.credit_card,
                                  color: Colors.grey[900],
                                ),
                                suffix: Icon(Icons.person),
                                filled: true,
                                border: InputBorder.none,
                                hintText: 'Karta raqam',
                                helperText: "Rossiyadan qabul qiluvchining Rf karta raqamni\nkrting",
                                helperStyle: TextStyle(fontSize: 16)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
