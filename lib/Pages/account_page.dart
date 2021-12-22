import 'package:flutter/material.dart';
import 'package:suture_house_demo/Pages/register_page.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: ElevatedButton(
          child: Text("Register"),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage())
            );
          },
        ),
      ),
    );
  }
}
