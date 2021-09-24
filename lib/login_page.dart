import 'package:flutter/material.dart';
import 'package:intro/util/routes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ChangeButton = false;
  String name = "";
  final _FormKey = GlobalKey<FormState>();

  MoveToHome(BuildContext context) async {
    if (_FormKey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _FormKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/girl.png",
                  fit: BoxFit.cover,
                  // height: 500,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome to the App $name",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                        ),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Username cannot be Empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Password cannot be Empty";
                          } else if (value != null && value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      //kissi bhi Container ko clickable bana sakte hein hum,by two methods first GectureDetector and second inkwell,inkell is preferrabel since it gives a pressing effect ,whereas Gecture detector doesnt give
                      Material(
                        borderRadius:
                            BorderRadius.circular(ChangeButton ? 50 : 10),
                        color: Colors.deepPurple,
                        child: InkWell(
                          splashColor: Colors.green,
                          onTap: () => MoveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: ChangeButton ? 100 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: ChangeButton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text("Login",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                            // decoration: BoxDecoration(
                            //   // shape: ChangeButton
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(ChangeButton ? 50 : 10),
                            //   color: Colors.deepPurple,
                            // ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                      //   child: Text("Login"),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
