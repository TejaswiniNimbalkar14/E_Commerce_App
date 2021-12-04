import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 100,),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: 'Username/Email',
                  hintText: 'Enter your username or email',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,),
            child: Row(
              children: [
                Row(
                  children: const [
                    const Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                    const SizedBox(width: 2.0,),
                    const Text('Remember me')
                  ],
                ),
                const Spacer(),
                const TextButton(
                  onPressed: null,
                  child: Text('Forgot Password?'),
                ),
              ],
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
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20.0,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.indigo),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.indigo),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
