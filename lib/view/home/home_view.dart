import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../widgets/choose_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Hello,\n",
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
                      Container(
                        height: 35,
                        width: 170,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 208, 203, 203)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text("Upcoming Flutter"),
                        ),
                      )
                    ],
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
                    child: Row(
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
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xffF5F7F6),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
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
                            SizedBox(
                              height: 30,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffA2D8A5)),
                                  side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide.none),
                                ),
                                onPressed: () {},
                                child: const Text("remote",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          """
            With the automation of attendance system, this process can be made more efficient and accurate. Automation of attendance system can be implemented using various technologies
            
             """,
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
