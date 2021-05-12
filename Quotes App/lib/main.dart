import 'package:flutter/material.dart';
import "quotes.dart";
import "quote_card.dart";

void main() => runApp(MaterialApp(
      home: sherudoge(),
    ));

class sherudoge extends StatefulWidget {
  @override
  _sherudogeState createState() => _sherudogeState();
}

class _sherudogeState extends State<sherudoge> {
  List<Quotes> quotes = [
    Quotes(
        author: "Jules Renard",
        text:
            "The truly free man is the one who can turn down an invitation to dinner without giving an excuse"),
    Quotes(
        author: "Pierce Brown",
        text: "Man cannot be freed by the same injustice that enslaved it."),
    Quotes(
        author: " Aaron Lauritsen",
        text:
            "There is strange comfort in knowing that no matter what happens today, the Sun will rise again tomorrow"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.black,
        title: Text(
          "Quotes App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map(
              (quote) => QuoteCard(
                quite: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
