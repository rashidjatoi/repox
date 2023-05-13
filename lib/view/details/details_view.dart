import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Project'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text(
              "Web Scrapping tool using python",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            subtitle: Text("by Rashid Ali"),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Project About",
                    style: TextStyle(fontWeight: FontWeight.w800)),
                SizedBox(height: 5),
                Text(
                  "Automation of Attendance System refers to the use of technology to streamline and simplify the process of taking attendance.Traditionally, attendance has been recorded manually, requiring teachers or administrators to take roll call, mark attendance in a register, and then update records manually. \n\nThis process is time-consuming and prone to errors. With the automation of attendance system, this process can be made more efficient and accurate. Automation of attendance system can be implemented using various technologies such as biometric systems, barcode scanners, RFID systems, or face recognition systems.Biometric attendance system is one of the most popular automated attendance systems.\n\nThis system uses biometric data such as fingerprints, facial recognition, or iris scans to authenticate the identity of students or employees. Once the identity is confirmed, the system automatically records the attendance of the individual.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Text("Technologies",
                    style: TextStyle(fontWeight: FontWeight.w800)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
