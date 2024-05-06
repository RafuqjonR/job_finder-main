import 'package:flutter/material.dart';

class Expansionstring extends StatelessWidget {
  IconData icon;
  String text;
  String childtext;
  Expansionstring(
      {required this.childtext, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: const Icon(Icons.add),
      title: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0, 30), blurRadius: 40)
            ]),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
      children: [
        Container(
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Text(
            childtext,
            style: TextStyle(fontSize: 25),
          ),
        )
      ],
    );
  }
}
