import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../details/details_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xrepo"),
        elevation: 0.8,
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: SizedBox(
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffCED4D9)),
                  borderRadius: BorderRadius.circular(6)),
              child: ListTile(
                onTap: () {
                  Get.to(() => const DetailsView());
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: const Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                ),
                title: const Text(
                  "Web Scrapping tool using python",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: const Text("by Rashid Ali"),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}
