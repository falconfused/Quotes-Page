import 'package:flutter/material.dart';
import "quotes.dart";

class QuoteCard extends StatelessWidget {
  final Quotes quite;
  final Function delete;
  QuoteCard({this.quite, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[400],
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              quite.text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 5),
            Text(
              quite.author,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: delete,
              child: Icon(
                Icons.delete,
                size: 25,
                color: Colors.yellow[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
