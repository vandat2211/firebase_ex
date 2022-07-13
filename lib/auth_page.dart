import 'package:flutter/material.dart';
import 'package:tkb/page/login_page.dart';

import 'page/register_page.dart';
class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage=true;
  void toggleScreens(){
setState((){
  showLoginPage=!showLoginPage;
});
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return Login(showRegisterPage: toggleScreens);
    }
    else{
      return RegisterPage(showLoginPage: toggleScreens,);
    }
    return Container();
  }
}
