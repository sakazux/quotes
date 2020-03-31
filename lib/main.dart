import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList() ,
  )
);

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List <Quote> quotes = [
    Quote(author: 'Oscar Wild', text:'Live life live long'),
    Quote(author: 'Oscar Wild', text:'Where there is a will there is a way.'),
    Quote(author: 'Oscar Wild', text:'Life is hard dont give up')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
          quote:quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
          )).toList(),
      ),
    );
  }
}

