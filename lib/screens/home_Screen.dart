import 'package:flutter/material.dart';
import 'package:flutter_class_010423/custom_widgets/chat_screen/status_list.dart';

import '../custom_widgets/chat_screen/call_list.dart';
import '../custom_widgets/chat_screen/chat_list.dart';
//import 'package:flutter_class_010423/custom_widgets/whatsapp_chatlist.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text('WhatsApp Business'),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Flexible(
                    flex: 1,
                    child: Tab(
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Tab(
                      text: 'Chats',
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Tab(
                      text: 'Status',
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Tab(
                      text: 'Calls',
                    ),
                  )
                ],
              ),
              actions: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  itemBuilder: (context) =>
                      [const PopupMenuItem(value: 1, child: Text('Hello'))],
                ),
                const SizedBox(
                  width: 10,
                ),
              ]),
          body: TabBarView(
            children: [
              const Center(child: Text('Open Front Camera')),

//CHAT LIST VIEW
              ListView(
                children: [
                  whatsapp_chat_list(
                      name: 'Sunny Khan',
                      msg: 'Kab Aye Ga',
                      imageUrl:
                          'https://avatars.githubusercontent.com/u/101089335?v=4'),
                  whatsapp_chat_list(
                      name: 'Zuhaib Khan',
                      msg: 'I am in class',
                      notification_count: '9'),
                  whatsapp_chat_list(
                      name: 'Muhammad Ali', msg: 'Your Msd here'),
                  whatsapp_chat_list(
                      name: 'Farooq Uni',
                      msg: 'Your Msd here',
                      imageUrl:
                          'https://cdn.statusqueen.com/dpimages/thumbnail/cute_dp_image-3098.jpg'),
                  whatsapp_chat_list(
                      name: 'Muhammad Ali', msg: 'Your Msd here'),
                  whatsapp_chat_list(name: 'Kashif zai', msg: 'Your Msd here'),
                  whatsapp_chat_list(
                      name: 'M. Nadeem',
                      msg: 'Your Msd here',
                      notification_count: '23'),
                  whatsapp_chat_list(
                      name: 'Muhammad Ali', msg: 'Your Msd here'),
                  whatsapp_chat_list(
                      name: 'Muhammad Ali', msg: 'Your Msd here'),
                  whatsapp_chat_list(
                      name: 'Muhammad Ali', msg: 'Your Msd here'),
                  whatsapp_chat_list(
                      name: 'Muhammad Ali', msg: 'Your Msd here'),
                ],
              ),
//End CHAT LIST VIEW

// STATUS LIST VIEW
              ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: const NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD1W9MJETPFK4hI2pwb1k7e7cqX-ie4fe_7Q&usqp=CAU'),
                      child: Container(
                          alignment: Alignment.bottomRight,
                          decoration: const BoxDecoration(
                            // color: Colors.teal,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Icon(
                            Icons.add,
                          )),
                    ),
                    title: const Text('My status'),
                    subtitle: const Text('Tap to add status update'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text('Recent updates')),
                  status_list(
                      name: 'Zuhaib School',
                      DateTime: DateTime.now(),
                      imageUrl:
                          'https://cdn.statusqueen.com/dpimages/thumbnail/cute_dp_image-3094.jpg'),
                  status_list(
                      name: 'DANISH',
                      DateTime: DateTime.now(),
                      imageUrl:
                          'https://yohohindi.com/wp-content/uploads/2022/11/sad-dp-yohohindi-18-768x768.jpg'),
                  status_list(
                      name: 'JAWAD',
                      DateTime: DateTime.now(),
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-32lv9ku3nAC0HvzrVwztgY18fJ9jJD2oXQ&usqp=CAU'),
                ],
              ),
// END STATUS LIST VIEW

//CALL List View Start
              ListView(
                children: [
                  const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Icon(Icons.link),
                      ),
                      title: Text('Create call link'),
                      subtitle: Text('Share a link for your WhatsApp call')),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text('Recent')),
                  call_list(name: 'Ovais Khan', DateTime: DateTime.now()),
                  call_list(
                      name: 'Sunny Khan',
                      DateTime: DateTime.now(),
                      imageUrl:
                          'https://avatars.githubusercontent.com/u/101089335?v=4'),
                  call_list(
                      name: 'Kashif School',
                      DateTime: DateTime.now(),
                      imageUrl:
                          'https://ienglishstatus.com/wp-content/uploads/2022/03/Attitude-Profile-Whatsapp-DP-Boys.jpg'),
                  call_list(name: 'Fayyaz Office', DateTime: DateTime.now()),
                  call_list(name: 'Ali Mirza', DateTime: DateTime.now()),
                ],
              )
// End Call list View
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Colors.teal,
            child: const Icon(Icons.chat),
          ),
        ));
  }
}
