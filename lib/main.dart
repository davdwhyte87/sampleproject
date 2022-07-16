import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp( MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget{
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 8;
  List<Quote> quotes = [
    Quote(author: "Lonel medd", text:"Never give into the koonst"),
    Quote(author: "Don need", text:"Live on the edge"),
    Quote(author: "Bravoo", text:"Dump the bitch")
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninja ID"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children:  [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ninja.jpg"),
                radius: 40,
              ),
            ),

            Divider(
              height: 60,
              color: Colors.grey[600],
            ),
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),

            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),

            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),

            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              "$ninjaLevel",
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),

            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Helloninja@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
            Column(
              children:
                quotes.map((quote){
                return QuoteCard(quote: quote,);
                }).toList()

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () {
          setState(() {
            ninjaLevel +=1;
          });
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}




