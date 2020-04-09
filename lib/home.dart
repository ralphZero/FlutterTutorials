import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Flutter App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.network(
                'https://pharefmhaiti.com/res/images/logo_compressed.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0,bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.person, color: Colors.amber,), 
                  label: Text(
                    'Press to connect',
                    style: TextStyle(
                      color: Colors.amber 
                    ),
                  ),
                  color: Colors.black,
                ),
                RaisedButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.person, color: Colors.deepPurple,), 
                  label: Text(
                    'Press to disconnect',
                    style: TextStyle(
                      color: Colors.deepPurple
                    ),
                  ),
                  color: Colors.amber,
                ),
              ],
            ),
          ),
          Text('By pressing the button above...'),
        ],
      ),
    );
  }
}