import 'package:flutter/material.dart';
import 'package:flutter_pitaxi/src/features/home/home.dart';

import '../../../common_widgets/common_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _loginCtrl = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/pi_background.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Container(
              width: containerWidth,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InputText(
                      controller: _loginCtrl,
                      hint: "LOGIN",
                    ),
                    SizedBox(height: 20),
                    InputText(
                      controller: _password,
                      hint: "PASSWORD",
                      obscureText: true,
                    ),
                    SizedBox(height: 40),

                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                      },
                      child : Icon(
                        Icons.login,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Mot de passe oublié',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
