import 'package:flutter/material.dart';

class Expansioncolumn extends StatelessWidget {
  IconData icon;
  String text;
  String childtext;
  String secondchild;
  Expansioncolumn(
      {required this.childtext,
      required this.icon,
      required this.text,
      required this.secondchild});
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
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    childtext,
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  const Icon(Icons.edit),
                ],
              ),
              Text(
                secondchild,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const Text(
                '11 Oct-03 May',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
