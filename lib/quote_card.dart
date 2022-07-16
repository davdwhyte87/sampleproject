import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                quote.text,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[900]
                )
            ),
            SizedBox(height: 6 ,),
            Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[900]
                )
            )

          ],
        ),
      ),
    );
  }
}
