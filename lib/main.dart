import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Title',
      home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void _iconButton() {
    print("Icon Button Pressed.");
  }
  void _iconSearch() {
    print("Icon Search Pressed.");
  }

  void _iconAdd() {
    print("Icon Add Pressed.");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle:  true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _iconButton,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: _iconSearch,
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Text('Application'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: _iconAdd,
      ),
    );
  }
}

