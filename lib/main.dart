// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'ui/image.dart';

main() => runApp(X());

class X extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Media Player'),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://github.com/jyoti-raj/Flutter-project/raw/master/%5BCooL%20GuY%5D%20%7B%7Ba2zRG%7D%7D%20(18).jpg'),
                  // image: AssetImage('bg.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 80,
                  color: Colors.blueAccent.shade100,
                  child: RaisedButton(
                    onPressed: () => print('hii'),
                    onLongPress: () {
                      Fluttertoast.showToast(
                          msg: 'do not press too long',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.lightBlue.shade800,
                          textColor: Colors.white,
                          fontSize: 20.0);
                    },
                    child: Text('Press me for text'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 80,
                  color: Colors.blueAccent.shade100,
                  child: RaisedButton(
                    onPressed: () {
                      print('you touched for audio');
                      var audio = AudioCache();
                      audio.play('lal_ishq.mp3');
                    },
                    child: Text('Press me for audio'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 80,
                  color: Colors.blueAccent.shade100,
                  child: RaisedButton(
                    onPressed: () => print('you touched for video'),
                    child: Text('Press me for video'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 80,
                  color: Colors.blueAccent.shade100,
                  child: RaisedButton(
                    onPressed: () {
                      print('hii');
                      {
                        Card(
                          child: Image(
                            image: AssetImage('bg.jpg'),
                            height: 100,
                            width: 100,
                          ),
                        );
                      }
                    },
                    onLongPress: () {
                      Fluttertoast.showToast(
                          msg: 'do not press too long',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.lightBlue.shade800,
                          textColor: Colors.white,
                          fontSize: 20.0);
                    },
                    child: Text('Press me for image'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
