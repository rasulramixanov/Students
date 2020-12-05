import 'package:flutter/material.dart';

class CodAlma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF085D00), Color(0xFF88FF00)],
                stops: [0.4, 1.7]),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 330.0,
          width: 350.0,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0), color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                height: 66.0,
              ),
              buildTextFormField(),
              SizedBox(height: 74.0),
              buildRaisedButon(context),
            ],
          ),
        ),
      ),
    );
  }

  RaisedButton buildRaisedButon(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(0.0),
      onPressed: ()=>Navigator.pushNamed(context, "/Name"),
      child: Container(
        width: 200.0,
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0, top: 10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF007749),
              Color(0xFF3EC40A),
              Color(0xFF4DE904),
            ],
          ),
        ),
        child: Text("göndər", textAlign: TextAlign.center),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orange.shade900,
          ),
        ),
        hintText: "6-rəqəmli kodu girin",
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(Icons.pending, color: Colors.brown),
      ),
    );
  }
}
