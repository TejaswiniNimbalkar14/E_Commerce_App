import 'package:flutter/material.dart';
import 'package:suture_house_demo/Pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 50,),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Register',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.orangeAccent,
                          width: 1.0
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1.0
                      )
                  )
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Create username',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.orangeAccent,
                          width: 1.0
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1.0
                      )
                  )
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email ID',
                  hintText: 'Enter your email ID',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.orangeAccent,
                          width: 1.0
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1.0
                      )
                  )
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Create password',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.orangeAccent,
                          width: 1.0
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1.0
                      )
                  )
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              onPressed: null,
              child: const Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 15, color: Colors.indigo),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage())
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.indigo),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
