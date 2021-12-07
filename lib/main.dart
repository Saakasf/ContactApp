import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "contact App",
      home: HomePage(),
    );
  }
}

// gggggggggggg
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My contact",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext contaxt, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "serch by name or number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "recent",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                if (index == 4)
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Contacts",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contaxt) => ContactPage()));
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/lady.jpg'),
                    ),
                    title: Text(
                      "Tungbani Fredrick",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("+233 502383570"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
    );
  }
}
