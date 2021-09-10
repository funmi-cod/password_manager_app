import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xfffbfaff),
          child: CustomPaint(
            painter: MyPaint(),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: -90,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('images/face1.jpeg'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  top: 70,
                  right: -40,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/face4.jpg'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  top: 160,
                  right: 140,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/face1.jpeg'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 110,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/face5.jpeg'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  bottom: 200,
                  left: -40,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('images/face2.png'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  bottom: 230,
                  right: -20,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/face3.jpg'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  top: 340,
                  right: 10,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/face1.jpeg'),
                    //backgroundColor: Color(0xfffdea3a),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 80,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Secure your Data from \n \t \t \t \t the Others',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Color(0xff404040),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 100,
                          child: LinearProgressIndicator(
                            value: 0.85,
                            backgroundColor: Color(0xffffffff),
                            valueColor:
                                AlwaysStoppedAnimation(Color(0xff404040)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffffffff).withOpacity(0.3),
                                  offset: Offset.zero,
                                  blurRadius: 1,
                                  spreadRadius: 2),
                            ],
                            color: Color(0xff404040),
                          ),
                          constraints: BoxConstraints(maxHeight: 40),
                          //alignment: Alignment.centerLeft,
                          child: Text(
                            'Get started',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Color(0xff404040);

    Path myPath = Path();

    myPath.moveTo(width * 0.15, 0);

    //myPath.quadraticBezierTo(
    //width * 0.70, height * 0.20, width * 0.40, height * 0.35);
    myPath.quadraticBezierTo(
        width * 0.6, height * 0.1, width * 0.35, height * 0.25);
    myPath.quadraticBezierTo(
        width * 0.12, height * 0.37, width * 0.3, height * 0.55);
    myPath.quadraticBezierTo(
        width * 0.42, height * 0.68, width * 1, height * 0.76);
    //myPath.quadraticBezierTo(
    //width * 0.2, height * 0.75, width * 1, height * 0.75);
    myPath.lineTo(width * 25, 0);
    myPath.lineTo(width, 0);

    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
