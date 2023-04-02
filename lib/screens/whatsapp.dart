import 'package:flutter/material.dart';

import '../custom_widgets/whatsapp_chatlist.dart';
//import 'package:flutter_class_010423/custom_widgets/whatsapp_chatlist.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text('WhatsApp Business'),
                bottom: const TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Icon(Icons.groups),
                    ),
                    Tab(
                      text: 'Chats',
                    ),
                    Tab(
                      text: 'Status',
                    ),
                    Tab(
                      text: 'Calls',
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
                const Text('hello'),

                //listview
                ListView(
                  children: [
                    whatsapp_chat_list(
                        name: 'Sunny Khan',
                        msg: 'Kab Aye Ga',
                        imageUrl:
                            'https://avatars.githubusercontent.com/u/101089335?v=4'),
                    whatsapp_chat_list(
                        name: 'Zuhaib Khan', msg: 'I am in class'),
                    whatsapp_chat_list(
                        name: 'Muhammad Ali', msg: 'Your Msd here'),
                    whatsapp_chat_list(
                        name: 'Farooq Uni',
                        msg: 'Your Msd here',
                        imageUrl:
                            'https://cdn.statusqueen.com/dpimages/thumbnail/cute_dp_image-3098.jpg'),
                    whatsapp_chat_list(
                        name: 'Muhammad Ali', msg: 'Your Msd here'),
                    whatsapp_chat_list(
                        name: 'Kashif zai', msg: 'Your Msd here'),
                    whatsapp_chat_list(name: 'M. Nadeem', msg: 'Your Msd here'),
                    whatsapp_chat_list(
                        name: 'Muhammad Ali', msg: 'Your Msd here'),
                  ],
                ),
                //End list view

                const Text('hello'),
                const Text('hello'),
              ],
            )));
  }
}
