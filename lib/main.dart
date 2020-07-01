import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondapp/quote.dart';
import 'package:secondapp/QuoteCard.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(text:'First Quote', author:'First'),
    Quote(text:'Second Quote', author:'Second'),
    Quote(text:'Third Quote', author:'Third'),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote){
            return QuoteCard(
                quote:quote,
                delete:(){
                  setState(() {
                    quotes.remove(quote);
                  });
                });
          }).toList(),
        ),
      ),
    );
  }
}
