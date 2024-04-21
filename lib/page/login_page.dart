import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key}) :super (key: key);

  @override
  State<LoginPage> createState () => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIcon(),
              _buildWelcomeText(),
              _buildEmailField(),
              _buildPasswordField(),
              _buildSignInButton(),
              _buildRegisterRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Icon(
      Icons.phone_android,
      size: 100,
    );
  }

  Widget _buildWelcomeText() {
    return Column(
      children: [
        SizedBox(height: 75),
        Text(
          'Bem Vindo!',
          style: GoogleFonts.bebasNeue(
            fontSize: 52,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Sentimos sua falta!',
          style: TextStyle(
            fontSize: 36,
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }

  Widget _buildEmailField() {
    return Column(
      children: [
        _buildTextField('Email'),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      children: [
        _buildTextField('Senha', obscureText: true),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 25.0 ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:  Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Entrar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ainda não tem uma conta?',
          style: TextStyle(
            fontWeight:FontWeight.bold,
          ),
        ),
        Text(
          'Cadastrar',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
