import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/app-icons.dart';
import 'package:flutter_application_2/config/app_routes.dart';
import 'package:flutter_application_2/config/app_strings.dart';
import 'package:flutter_application_2/pages/Home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Scaffold(
//resizeToAvoidBottomInset: false,Agr ye na ho to to spacer ki shaktiyan kaam ni krti typing k waqt(But its not recommended)
      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      // backgroundColor: Colors.blue[200],
      drawer: Container(
        width: 400,
        height: 500,
        color: Colors.blue[200],
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          // height: 800,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            //(SingleChildScrollView) ka use scrollOption bnany k liye hota esy widget se wrap krty hai
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 24,
            ), //aap direct yha pr b top likh sakty hai
            // padding: EdgeInsets.all(22),
            child: Column(
              children: [
                //  SizedBox(height: 68,),
                Spacer(),
                Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Urbanist-Light.ttf ',
                  ),
                ),
                SizedBox(
                  //space dene k liye use hota
                  height: 10,
                  // width: 50,
                  // child: Text('i am just writing it foer testing'),
                ),
                Text(
                  'Login To continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 60,),
                Spacer(),
                SizedBox(
                  //space dene k liye use hota
                  height: 5,
                  // width: 50,
                  // child: Text('i am just writing it foer testing'),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      // hintStyle: TextStyle(color: Colors.amber),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5)),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forget Password is Clicked');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue[800],
                      backgroundColor: Colors.white.withOpacity(0.6),
                    ),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // width: 250,
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return HomePage();
                      //     },
                      //   ),
                      // );
                      //         OR      //
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.amber[300],
                    ),
                    child: Text('Log In'),
                  ),
                ),
                // SizedBox(height: 50,
                // ),
                Spacer(),
                Text(
                  'OR Sign in with',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Spacer(),
                // SizedBox(height: 20,),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Google is pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(32),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Continue with Google',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 12,
                ),

                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Facebook is Pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.facebook,
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        print('');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue[500],
                        backgroundColor: Colors.red[100],
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                //   TextField(
                //   decoration: InputDecoration(
                //       hintText: 'Username',
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.all(
                //         Radius.circular(25),
                //       )),
                //       filled: true,
                //       fillColor: Colors.white.withOpacity(0.5)),
                // ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
