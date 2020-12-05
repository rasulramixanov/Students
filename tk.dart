import 'package:flutter/material.dart';
import './square_button.dart';

class TK extends StatelessWidget {
  const TK({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TK",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SquareButton(
              backgroundColor: Colors.brown,
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 33,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SquareButton(
              backgroundColor: Colors.orange,
              icon: Icon(
                Icons.message,
                color: Colors.white,
                size: 33,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SquareButton(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 33,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SquareButton(
              backgroundColor: Colors.black54,
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
