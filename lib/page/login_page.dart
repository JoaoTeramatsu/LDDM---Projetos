import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key}) :super (key: key);

  @override
  State<LoginPage> createState () => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(
                Icons.phone_android,
                size: 100,
              ),
              _buildWelcomeText(),
              _buildLoginForm(),
              _buildSignInButton(),
              _buildRegisterRow(),
            ],
          ),
        ),
      ),
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

  Widget _buildLoginForm() {
    return Form(
      child: Container(
        padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "E-mail",
                hintText: "E-mail",
                border: OutlineInputBorder()
              ),
            ),
              const SizedBox(height: 10),
            TextFormField(
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
            ),
              const SizedBox(height: 10,)
          ]
        )
      )
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
          child: TextFormField(
            validator: (value){if (value == null || value.isEmpty){
              return r'Please enter $hintText';
            }
            return null;
          },
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
