import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profile1provider.dart';
import 'user.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile profile = Provider_profile1().getprofile();
  Color textcolor=Color(0xFF4a4a4a);
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(fontFamily: 'SFUI'),
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/profiles/s.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 1.1),
                  ),
                  centerTitle: true,
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.bars),
                    color: Colors.white,
                  ),
                  actions: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.cog),
                        color: Colors.white)
                  ],
                ),
                body: Stack(
                  children: <Widget>[
                    CustomPaint(
                      painter: myCustomPainter(),
                      child: Container(),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.25,
                      left: MediaQuery.of(context).size.width * 0.10,
                      child: CircleAvatar(
                        minRadius: 30,
                        backgroundImage:
                            ExactAssetImage('assets/profiles/p1.jpg'),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.35,

                      bottom: 40,

                      right: 14,
                      left: 14,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              profile.user.name,
                              style: TextStyle(color: Color(0xFF4a4a4a),
                              fontWeight:FontWeight.w900,
                              fontSize: 28),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,color: Colors.grey.shade400,
                              ),
                              Text(profile.user.address,style: TextStyle(color: textcolor),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30,bottom: 12),
                            child: Text('About me',style: TextStyle(color: textcolor),),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                profile.user.about,style: TextStyle(color: textcolor,height: 1.2
                                ,fontSize: 18,letterSpacing: 1.1),
                              )),

                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 5
                      ,left: 10,
                      right: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('FOLLOERS',style: TextStyle(color: Colors.grey.shade400),),
                              Text(profile.follower.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('FOLLOING',style: TextStyle(color: Colors.grey.shade400)),
                              Text(profile.following.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold))
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('FRINDES',style: TextStyle(color: Colors.grey.shade400)),
                              Text(profile.friends.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ));
  }
}

class myCustomPainter extends CustomPainter {
  Color c2 = const Color(0xFFFFFFFF);
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    paint.color = Colors.white;
    path.lineTo(0, size.height * 0.33);
    path.lineTo(size.width, size.height * 0.40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.27);
    path.close();
    canvas.drawPath(path, paint);
    // canvas.drawColor(Colors.white, BlendMode.color);
  }

  @override
  bool shouldRepaint(myCustomPainter oldDelegate) => false;
}
