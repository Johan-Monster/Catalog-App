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
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //kissi bhi Container ko clickable bana sakte hein hum,by two methods first GectureDetector and second inkwell,inkell is preferrabel since it gives a pressing effect ,whereas Gecture detector doesnt give
                    InkWell(
                      onTap: () async {
                        setState(() {
                          ChangeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
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
                        decoration: BoxDecoration(
                          // shape: ChangeButton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(ChangeButton ? 50 : 10),
                          color: Colors.deepPurple,
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
        ));
  }
}
