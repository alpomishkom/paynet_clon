import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'widgetListViewPages/listViewPages.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _cart = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "O'tkazmalar",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
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
                                    suffix: const Icon(Icons.person),
                                    filled: true,
                                    border: InputBorder.none,
                                    hintText: 'Karta yoki Telfon Raqam',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const WidgetPagesListView(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
