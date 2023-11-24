import 'package:flutter/material.dart';
import 'package:paynet_clone/madel/madelPages.dart';

import '../pulotqazma/ozbekistan_russiya.dart';
import '../pulotqazma/russiya_ozbekistan.dart';

class WidgetPagesListView extends StatefulWidget {
  const WidgetPagesListView({Key? key}) : super(key: key);

  @override
  State<WidgetPagesListView> createState() => _WidgetPagesListViewState();
}

class _WidgetPagesListViewState extends State<WidgetPagesListView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            CircolAvatar.listW[index].backgroundImage,
                        backgroundColor: CircolAvatar.listW[index].color,
                      ),
                    ),
                    Column(
                      children: [
                        CircolAvatar.listW[index].text,
                      ],
                    )
                  ],
                );
              },
              itemCount: CircolAvatar.listW.length,
            ),
          ),

          Column(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Xalqora O'tkazmalar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Flag_of_Russia.png/440px-Flag_of_Russia.png"),
                      ),
                      title: const Text("O'zbekiston --> Rossiya"),
                      subtitle: const Text("1 rubl =  140.3 so'm"),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black87,
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(35),
                              ),
                            ),
                            content: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "O'zbekistondan Russiyaga\no'tkazmalar",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                      Image(
                                          image: NetworkImage(
                                              "https://1pay.uz/wp-content/uploads/2023/03/uzb_kak_pereslat_dengi_v_uzbekistan_iz_rossii.png"))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Qarindoshlarigiz va yaqinlarigsga HUMO/Uzcard orqali RF karalariga mablag' o'tkazing.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Birvarkyiga 5 100 000 so'mgacha mablag' o;tkazishingiz mumkin.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "O'tkazma bir necha daqiqadan bir kungacha davom etadi.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                  const SizedBox(height: 70,),
                                  Center(
                                    child: Column(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            fixedSize: const Size(300, 45),
                                            backgroundColor: Colors.green,
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const OzbekistonRussiyaPages()));
                                          },
                                          child: const Text(
                                            "Mablag' o'tkazish",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            backgroundColor: Colors.white,
                            //behavior: SnackBarBehavior.fixed,
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            duration: const Duration(seconds: 1),
                            elevation: 10,
                            //margin: EdgeInsets.symmetric(vertical: 10, horizontal:5),
                          ),
                        );
                      },
                    ),
                     ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://tfi.uz/photos/1/photos/flag-1024x512.jpg"),
                      ),
                      title: const Text("Rossiya --> O'zbekistan"),
                      subtitle: const Text("140.3 so'm = 1 rubl "),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black87,
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(35),
                              ),
                            ),
                            content: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Russiyaga O'zbekistondan\no'tkazmalar",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                      Image(
                                          image: NetworkImage("https://1pay.uz/wp-content/uploads/2023/03/uzb_kak_pereslat_dengi_v_uzbekistan_iz_rossii.png"))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Qarindoshlarigiz va yaqinlarigsga HUMO/Uzcard orqali RF karalariga mablag' o'tkazing.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Birvarkyiga 5 100 000 so'mgacha mablag' o;tkazishingiz mumkin.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "O'tkazma bir necha daqiqadan bir kungacha davom etadi.",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                  const SizedBox(height: 70,),
                                  Center(
                                    child: Column(
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            fixedSize: const Size(300, 45),
                                            backgroundColor: Colors.green,
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const OzbekistonRussiyaPages1()));
                                          },
                                          child: const Text(
                                            "Mablag' o'tkazish",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            backgroundColor: Colors.white,
                            //behavior: SnackBarBehavior.fixed,
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            duration: const Duration(seconds: 1),
                            elevation: 10,
                            //margin: EdgeInsets.symmetric(vertical: 10, horizontal:5),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
