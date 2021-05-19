import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'camera_screen.dart';
import 'strings.dart' as strings;

// ignore: must_be_immutable
class CodeBoutique extends StatelessWidget{
  final TextEditingController code = new TextEditingController();
  var modelLoad = 'cuisineAngle';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentTextStyle: TextStyle(
        color: Colors.black54,
        fontSize: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: Text(strings.demandeCode, textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: GestureDetector(
                child: TextField(
                  controller: code,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Maintenez le bouton GO !"),
                ),
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              child: Text("GO !",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: (verif),
              onLongPress: (){
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (builder) => CameraScreen(
                    selectedModel: modelLoad,
                  ),
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void verif(){
    print('ALLO');
    if(code.text == strings.cuisineLigneCode){
      modelLoad = 'cuisineLigne';
      print('code chargé : ');
      print (modelLoad);
    }
    if(code.text == strings.cuisineAngleCode){

      modelLoad = 'cuisineAngle';
      print('code chargé : ');
      print (modelLoad);
    }
    if(code.text == strings.cuisineUCode){

      modelLoad = 'cuisineU';
      print('code chargé : ');
      print (modelLoad);
    }
  }
}