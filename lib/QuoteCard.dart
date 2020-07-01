import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondapp/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic
              ),),
            SizedBox(height: 10.0,),
            Text("--  "+quote.author,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 10.0,),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete It'))
          ],
        ),
      ),
    );
  }
}
