import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.teal,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Icon(
                Icons.camera_alt,
                size: 25,
              ),
              Text(
                "CHATS",
                style: TextStyle(fontSize: 11),
              ),
              Text(
                "STATUS",
                style: TextStyle(fontSize: 11),
              ),
              Text(
                "CALLS",
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
          actions: [
            const Icon(
              Icons.search,
            ),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              itemBuilder: (context) => const [
                PopupMenuItem(
                  child: Text("New Group"),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text("Linked Devices"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Icon(
              Icons.camera_alt,
              size: 100,
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(
                        'https://www.best4geeks.com/wp-content/uploads/2018/08/50-cute-girl-profile-picture.jpg'),
                  ),
                  trailing: Text("9:17 AM"),
                  title: Text("Ema watson"),
                  subtitle: Text("Hi, how r u? "),
                );
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: index % 2 == 0
                          ? Border.all(
                              width: 3,
                              color: Colors.teal,
                            )
                          : Border.all(
                              width: 0,
                              color: Colors.teal,
                            ),
                    ),
                    child: const CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: NetworkImage(
                          'https://www.best4geeks.com/wp-content/uploads/2018/08/50-cute-girl-profile-picture.jpg'),
                    ),
                  ),
                  title: const Text("John Snow"),
                  subtitle: const Text("Yesterday, 10:24 PM"),
                );
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.best4geeks.com/wp-content/uploads/2018/08/50-cute-girl-profile-picture.jpg'),
                  ),
                  trailing:
                      Icon(index % 2 == 0 ? Icons.call : Icons.video_call),
                  title: const Text("Annie"),
                  subtitle: const Text("Outgoing Today, 7:36 PM"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
