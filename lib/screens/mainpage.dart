import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/advertiserpage.dart';
import 'package:flutter_app/screens/loginpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(top: 300, left: 50, right: 50,bottom: 100),
        child: Column(
          children: <Widget>[
            RaisedButton(
                color: Theme
                    .of(context)
                    .primaryColorDark,
                textColor: Theme
                    .of(context)
                    .primaryColorLight,
                child: Text(
                  'Influencer',
                  textScaleFactor: 1.5,
                ),
                onPressed: () {
                  setState(() {
                    debugPrint("Save button clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  });
                }
            ),
            RaisedButton(
                color: Theme
                    .of(context)
                    .primaryColorDark,
                textColor: Theme
                    .of(context)
                    .primaryColorLight,
                child: Text(
                  'Advetiser',
                  textScaleFactor: 1.5,
                ),
                onPressed: () {
                  setState(() {
                    debugPrint("Save button clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AdvertiserPage(title: 'Users');
                    }));
                  });
                }
            )
          ],
        ));
  }
}
