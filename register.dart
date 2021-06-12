import 'package:fluttertrainning2/login.dart';
import 'package:flutter/material.dart';

import 'customWidget.dart';

class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    Text(
                      "Créer un compte",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Nom complet",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Numéro de téléphone",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "test@gmail.com",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Mot de passe",
                            border: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.black),
                            ),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    CustomButton(
                      height: 44,
                      inputText: 'Créer le compte',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Je suis déjà membre."),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ),
                            );
                          },
                          child: Text(
                            "Se connecter",
                            style: TextStyle(
                              color: Color(0xff9450e7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}