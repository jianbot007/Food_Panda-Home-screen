import 'package:flutter/material.dart';
import 'package:ifood/Screen/HomePage.dart';



class Login1 extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login1> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38),
                ),
              )),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/Login2.png',
              ),
            ),
          ),
          Container(
              child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child : Form(
              key: _formKey,
            child: Column(
                children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your user name", labelText: "UserName : "),
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Username can't be empty";
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your Password", labelText: "Password : "),
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return "Password can't be empty";
                  } else if (value != null && value.length < 8) {
                    return "Password character should be 8";
                  }
                  return null;
                },
              ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: TextButton(
                        onPressed: ()   {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context,  MaterialPageRoute(builder: (context) => Homepage()),);
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 45,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Signup",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ))))
            ],
    ) )
  ]))))])) );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Text(
        "iFood",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_tree,
              color: Colors.black,
            ))
      ],
    );
  }
}


