import 'package:flutter/material.dart';
import 'package:test_app/Models/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function onDelete;

  QuoteCard({this.quote, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 6.0,),
            FlatButton.icon(
              onPressed: onDelete,
              icon: Icon(Icons.delete),
              label: Text('Delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}