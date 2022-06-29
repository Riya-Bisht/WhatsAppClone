import 'package:flutter/material.dart';
import 'package:test_app/pages/call_screen.dart';
import 'package:test_app/pages/camera_screen.dart';
import 'package:test_app/pages/chat_screen.dart';
import 'package:test_app/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key, required String title}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsappState();
}

class _WhatsappState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    //TODO:implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(text: "Chats"),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: new Icon(Icons.message, color: Colors.white),
        // ignore: avoid_print
        onPressed: () => print("open chats"),
      ),
    );
  }
}
