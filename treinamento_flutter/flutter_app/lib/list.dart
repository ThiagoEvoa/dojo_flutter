import 'package:flutter/material.dart';
import 'package:flutter_app/detail.dart';
import 'package:flutter_app/personDAO.dart';

class ListPage extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: FutureBuilder(
        future: PersonDAO().get(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data.length > 0) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(snapshot.data[index].id.toString()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    PersonDAO()
                        .delete(snapshot.data[index].id)
                        .whenComplete(() {
                      setState(() {
                        snapshot.data.removeAt(index);
                      });
                    });
                  },
                  background: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(person: snapshot.data[index]),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(snapshot.data[index].name),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text("No content =/"),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
      ),
    );
  }
}
