import 'package:flutter/material.dart';
import 'package:test_app/Views/quotecard.dart';
import 'Models/quote.dart';

class ListData extends StatefulWidget {

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  var mQuote = Quote();
  List<Quote> quotes = [
    Quote(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',author: 'Barry White'),
    Quote(text: 'Integer sollicitudin purus ac vestibulum luctus.' ,author: 'Snow White'),
    Quote(text: 'Pellentesque vel nunc id purus iaculis molestie.' ,author: 'Evil Queen'),
    Quote(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',author: 'Barry White'),
    Quote(text: 'Integer sollicitudin purus ac vestibulum luctus.' ,author: 'Snow White'),
    Quote(text: 'Pellentesque vel nunc id purus iaculis molestie.' ,author: 'Evil Queen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: quotes.map((quote){
          return QuoteCard(quote: quote,);
        }).toList(),
      ),
    );
  }
}