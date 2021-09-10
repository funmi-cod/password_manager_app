import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffffffff),
            margin: EdgeInsets.only(top: 14.0, left: 22.0, right: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/face5.jpeg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.bell),
                        color: Color(0xff404040),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Manage Your Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff404040),
                          ),
                        ),
                        TextSpan(
                          text: '\nin the Easiest Way',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff404040),
                          ),
                        ),
                        WidgetSpan(
                          child: Icon(
                            FontAwesomeIcons.lock,
                            size: 14,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 15.0, 20.0, 15.0),
                                  prefixIcon: Icon(
                                    FontAwesomeIcons.search,
                                    color: Color(
                                      0xff404040,
                                    ),
                                  ),
                                  hintText: "Create a password",
                                  hintStyle: TextStyle(fontSize: 10),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff404040),
                                          width: 32.0),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xfffbfaff),
                                          width: 32.0),
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  fillColor: Color(0xfffbfaff),
                                  filled: true),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff404040),
                          ),
                          child: Icon(
                            FontAwesomeIcons.arrowCircleRight,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Color(0xff404040),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Let\'s Secure your Data in',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xfffbfaff),
                                ),
                              ),
                              TextSpan(
                                text: '\nthe next level',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xfffbfaff),
                                ),
                              ),
                              TextSpan(
                                text: '\nplan your security guard',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xfffbfaff),
                                ),
                              ),
                              TextSpan(
                                text: '\nto protect your password data with us',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xfffbfaff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'See more',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xfffbfaff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xff404040),
                        ),
                      ),
                      Text(
                        'see all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff404040),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 30,
                        width: MediaQuery.of(context).size.width,
                        child: Expanded(
                          child: ListView(
                            padding: EdgeInsets.all(8),
                            children: [
                              ListTile(
                                title: Text(
                                  'Google',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff404040),
                                  ),
                                ),
                                subtitle: Text(
                                  'elijahmaria04@gmail.com',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff404040),
                                  ),
                                ),
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/google.png'),
                                ),
                                trailing: Icon(
                                  FontAwesomeIcons.userSecret,
                                  color: Color(0xff404040),
                                ),
                              ),
                              /*Expanded(
                                child: ListTile(
                                  title: Text(
                                    'Google',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'elijahmaria04@gmail.com',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage('images/google.png'),
                                  ),
                                  trailing: Icon(
                                    FontAwesomeIcons.userSecret,
                                    color: Color(0xff404040),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    'Google',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                  subtitle: Text(
                                    'elijahmaria04@gmail.com',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage('images/google.png'),
                                  ),
                                  trailing: Icon(
                                    FontAwesomeIcons.userSecret,
                                    color: Color(0xff404040),
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
