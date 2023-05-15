import 'package:flutter/material.dart';
import 'package:galonku/DesignSystem/_button_primary.dart';
import 'package:galonku/DesignSystem/_button_sinkronise.dart';
import 'package:galonku/DesignSystem/_heading.dart';
import 'package:galonku/LoginPage/user_signin.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});
  static const nameRoute = '/userlogin';

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                SizedBox(height: 10),
                Heading(role: "Pelanggan", action: "Masuk"),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Masuk dengan akun anda yang telah terdaftar sebelumnya",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ButtonSinkronise(
                  image: "images/google_logo.png",
                  text: "Sinkronasi Dengan Google",
                  onPressed: () {},
                ),
                SizedBox(height: 10),
                ButtonSinkronise(
                  image: "images/facebook_logo.png",
                  text: "Sinkronasi Dengan Facebook",
                  onPressed: () {},
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset("images/atau.png"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.blue[600],
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "masukkan email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(66, 37, 37, 37),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "masukkan password",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(66, 37, 37, 37),
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: _obscureText
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.visibility_outlined),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, routeName);
                      },
                      child: Text(
                        "lupa sandi ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ButtonPrimary(
                    text: "Masuk",
                    onPressed: () {
                      // Navigator.pushNamed(context, routeName);
                    },
                  ),
                ),
                Container(
                  // alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum memiliki akun ?",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          // aksi yang dijalankan saat teks diklik
                          Navigator.pushNamed(context, UserSignIn.nameRoute);
                        },
                        child: Text(
                          "daftar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.blue[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
