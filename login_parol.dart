import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isHidden = true;

  get hintText => "Parolunuz";

  // ignore: unused_element
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.5,
              0.8,
              1.2,
              1.5,
            ],
            colors: [
              Color(0xFF3D00E6),
              Color(0xFFFFDDEE),
              Color(0xFFFF66B3),
              Color(0xFFFF22A3),
              Color(0xFFFFDDEE),
            ],
          ),
        ),
        padding: EdgeInsets.only(
          top: 120.0,
          right: 20.0,
          left: 20.0,
          bottom: 20.0,
        ),

        //Form buraya gelir
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: children(),
          ),
        ),
      ),
    );
  }

  List<Widget> children() {
    return <Widget>[
      buildStudentsTitle(),
      Text(
        ".AZ",
        style: TextStyle(
          color: Colors.brown.shade800,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
      SizedBox(height: 15.0),
      TextFormField(
        controller: loginController,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          hintText: "Telefon nömrəniz",
          prefixIcon: Icon(Icons.person, color: Colors.grey),
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "Lütfən telefon nömrənizi daxil edin";
          }
        },
      ),
      SizedBox(height: 15),
      TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          hintText: "Parolunuz",
          prefixIcon: Icon(Icons.lock, color: Colors.grey),
          suffixIcon: hintText == "Parolunuz"
              ? IconButton(
                  onPressed: _toggleVisibility,
                  icon: _isHidden
                      ? Icon(Icons.visibility_off, color: Colors.grey.shade700)
                      : Icon(Icons.visibility, color: Colors.black),
                )
              : null,
        ),
        obscureText: hintText == "Parolunuz" ? _isHidden : false,
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "Lütfən parolunuzu daxil edin";
          }
        },
      ),
      SizedBox(height: 20.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text("Parolu unutmusunuz ?",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
      SizedBox(height: 40.0),
      buildRaisedButton(),
      SizedBox(height: 20.0),
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/SignUpPage"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Text("Hesabın yoxdur ?  ",
                      style: TextStyle(color: Colors.black)),
                  Text("Giriş elə",
                      style: TextStyle(fontWeight: FontWeight.w800))
                ],
              ),
            ),
          ],
        ),
      )
      //SizedBox(height: ,)
    ];
  }

  RaisedButton buildRaisedButton() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          print("validation tamamlandı");
        } else {
          print("validation yapılamadı");
        }
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(37.0),
      ),
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF890D94), Color(0xFFF016A7)],
            ),
            borderRadius: BorderRadius.circular(37.0)),
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Log in",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 22.0),
        ),
      ),
    );
  }

  Row buildStudentsTitle() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 41.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Colors.blue,
                Colors.white,
                Colors.green.shade900,
              ],
            ),
          ),
          child: Text(
            "S",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.brown,
              fontSize: 35.0,
            ),
          ),
        ),
        SizedBox(width: 5.0),
        Container(
          margin: EdgeInsets.only(bottom: 45.0),
          height: 46.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.6, 1.1],
              colors: [
                Colors.pink,
                Colors.white,
                Colors.amber,
              ],
            ),
          ),
          child: Text(
            "T",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigoAccent,
              fontSize: 40.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 41.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Colors.deepOrangeAccent,
                Colors.white,
                Colors.teal,
              ],
            ),
          ),
          child: Text(
            "U",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 35.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 45.0),
          height: 46.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Colors.blue,
                Colors.white,
                Colors.pink.shade900,
              ],
            ),
          ),
          child: Text(
            "D",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 40.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 41.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Color(0xFFD4103A),
                Colors.white,
                Color(0xFF10D472),
              ],
            ),
          ),
          child: Text(
            "E",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF9B8009),
              fontSize: 35.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 45.0),
          height: 46.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Color(0xFF2310D4),
                Colors.white,
                Color(0xFF06C7BD),
              ],
            ),
          ),
          child: Text(
            "N",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFD41082),
              fontSize: 40.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          height: 41.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Color(0xFFD30505),
                Colors.white,
                Color(0xFFFAF600),
              ],
            ),
          ),
          child: Text(
            "T",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF03B821),
              fontSize: 35.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 45.0),
          height: 46.0,
          width: 41.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.6,
                1.1,
              ],
              colors: [
                Color(0xFF5CCDF0),
                Colors.white,
                Color(0xFF10D472),
              ],
            ),
          ),
          child: Container(
            child: Text(
              "S",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFF8800),
                fontSize: 40.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
