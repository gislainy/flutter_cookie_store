import 'package:flutter/material.dart';
import 'package:flutter_cookie_store/bottom_bar.dart';
import 'package:flutter_cookie_store/cookie_page.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  CookieDetail({this.assetPath, this.cookieprice, this.cookiename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pickup',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)))
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
                  height: 150.0, width: 100, fit: BoxFit.contain)),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              cookieprice,
              style: TextStyle(
                  color: Color(0xFFF17532),
                  fontFamily: 'Varela',
                  fontSize: 24.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Text(
              'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Varela',
                  color: Color(0xffb4b8b9)),
            ),
          )),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(0xfff17532),
              ),
              child: Center(
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Varela',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
