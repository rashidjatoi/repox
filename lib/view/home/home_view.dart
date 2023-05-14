import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../widgets/choose_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0),
        drawer: const Drawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Hello, ",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter ExtraBold",
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Rashid",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Inter Regular",
                            color: appThemeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ChooseButton(
                        btnTextColor: appThemeColor,
                        btnTitle: "Students",
                        btnColor: Colors.white,
                        ontap: () {},
                      ),
                      const SizedBox(width: 10),
                      ChooseButton(
                        btnTextColor: Colors.white,
                        btnTitle: "Teachers",
                        btnColor: appThemeColor,
                        ontap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 202, 208, 211)),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Row(
                      children: [
                        Text(
                          "Search a name, skill, comany etc",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xffF5F7F6),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: appThemeColor,
                              child: Center(
                                child: Text(
                                  "R",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flutter Developer",
                                  style: TextStyle(
                                    color: appThemeColor,
                                    fontSize: 15,
                                    fontFamily: "Inter ExtraBold",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Softonic",
                                  style: TextStyle(
                                    color: appThemeColor,
                                    fontFamily: "Inter Regular",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          """Flitter technlogy With the automation of attendance system, this process can be made more efficient and accurate. Automation of attendance system can be implemented using various technologies""",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
        floatingActionButton: ChooseButton(
          ontap: () {},
          btnColor: appThemeColor,
          height: 50,
          btnTitle: "Are you hiring?",
          btnTextColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
