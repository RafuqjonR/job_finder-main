import 'package:flutter/material.dart';
import 'package:job_finder/expansiontitlecolumn.dart';
import 'package:job_finder/expansiontitlestring.dart';
import 'package:job_finder/expansointitlecontainer.dart';

void main() {
  runApp(Jobfind());
}

class Jobfind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.deepPurpleAccent,
                      Color.fromARGB(255, 213, 197, 255)
                    ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Colors.deepPurpleAccent),
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: const Text(
                              '👽',
                              style: TextStyle(fontSize: 55),
                            )),
                        const Spacer(),
                        const Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Brandone Louis',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    const Text(
                      'California USA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '120k',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                        const Text(
                          ' Follower',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '23k',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                        const Text(
                          ' Following',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        Spacer(),
                        Container(
                          width: 116,
                          height: 45,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.deepPurpleAccent)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Edit profile',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.edit, color: Colors.white)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expansionstring(
                  childtext:
                      'Veniam nostrud do ut tempor nisi ad anim nostrud elit.',
                  icon: Icons.screen_rotation_alt_rounded,
                  text: 'About me'),
              const SizedBox(
                height: 10,
              ),
              Expansioncolumn(
                  childtext: 'Tatu',
                  icon: Icons.badge,
                  text: 'University',
                  secondchild: 'Tuit'),
              const SizedBox(
                height: 10,
              ),
              Expansioncolumn(
                  childtext: 'Najot ta`lim',
                  icon: Icons.computer,
                  text: 'Study',
                  secondchild: 'Najot ta`lim'),
              const SizedBox(
                height: 10,
              ),
              Expansioncontainer(
                  icon: Icons.stacked_bar_chart, text: 'My experiens'),
              const SizedBox(
                height: 10,
              ),
              Expansioncontainer(
                  icon: Icons.stacked_bar_chart, text: 'My skills'),
              SizedBox(
                height: 10,
              ),
              Expansioncontainer(
                  icon: Icons.stacked_bar_chart, text: 'My knowledges'),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyan,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_input_component_sharp),
              label: 'Items',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save_sharp),
              label: 'Save',
            ),
          ],
        ),
      ),
    );
  }
}
