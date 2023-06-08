import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('setting')),
                PopupMenuItem(value: 2, child: Text('option')),
                PopupMenuItem(value: 3, child: Text('Logout'))
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(tabs: [
            Icon(Icons.camera_alt),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            )
          ]),
          backgroundColor: Colors.teal,
          title: Text('Watsapp clone'),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              'Sorry I have no camara',
              style: TextStyle(fontSize: 20),
            )),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text('Gost Recon'),
                        subtitle: Text('Where is my gun?'),
                        trailing: Text('7.58 PM'),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                              'https://i.pinimg.com/564x/fd/1e/cc/fd1ecc912ce54dd7194875ab9f0ed7d3.jpg'),
                        ));
                  }),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent updates',
                        ),
                        ListTile(
                          title: Text('Gost Recon'),
                          subtitle: Text('8.15'),
                          trailing: Icon(Icons.more_horiz_outlined),
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.red)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                  'https://i.pinimg.com/564x/fd/1e/cc/fd1ecc912ce54dd7194875ab9f0ed7d3.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Gost Recon'),
                      subtitle: Text('8.15'),
                      trailing: Icon(Icons.more_horiz_outlined),
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                              'https://i.pinimg.com/564x/fd/1e/cc/fd1ecc912ce54dd7194875ab9f0ed7d3.jpg'),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return ListTile(
                      title: Text('Gost Recon'),
                      subtitle: Text('Today,8.23pm'),
                      trailing: Icon(Icons.camera_alt),
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                              'https://i.pinimg.com/564x/fd/1e/cc/fd1ecc912ce54dd7194875ab9f0ed7d3.jpg')),
                    );
                  } else {
                    return ListTile(
                      title: Text('Gost Recon'),
                      subtitle: Text('Today,8.23pm'),
                      trailing: Icon(Icons.phone),
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                              'https://i.pinimg.com/564x/fd/1e/cc/fd1ecc912ce54dd7194875ab9f0ed7d3.jpg')),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
