import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'ui/image.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: X()));
}

class X extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Media Player'),
          leading: Icon(
            Icons.perm_media,
            size: 30,
          ),
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
                  onPressed: () {
                    print('hii');
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => textPage2()));
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => audioPage2()));
                    // var audio = AudioCache();
                    // audio.play('lal_ishq.mp3');
                  },
                  child: Text('Press me for audio'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Container(
              //   alignment: Alignment.center,
              //   width: 220,
              //   height: 80,
              //   color: Colors.blueAccent.shade100,
              //   child: RaisedButton(
              //     onPressed: () => print('you touched for video'),
              //     child: Text('Press me for video'),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              Container(
                alignment: Alignment.center,
                width: 220,
                height: 80,
                color: Colors.blueAccent.shade100,
                child: RaisedButton(
                  onPressed: () {
                    print('hii');
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => imagePage2()));
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
          ),
        ));
  }
}

class imagePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Page'),
        leading: Icon(
          Icons.image,
          size: 35,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
            // width: MediaQuery.of(context).size.width * 0.5,
            // height: MediaQuery.of(context).size.height * 0.7,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Back to menu page'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class audioPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Page'),
        leading: Icon(
          Icons.audiotrack,
          size: 25,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/ram_lela.jfif'),
              fit: BoxFit.cover,
            ),
          ),
          RaisedButton(
            onPressed: () {
              var audio = AudioCache();
              audio.play('lal_ishq.mp3');
              print('Song is playing');
            },
            child: Text('click me'),
            color: Colors.blue,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('back to menu page'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class textPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Page'),
        leading: Icon(Icons.text_fields),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'hello everyone',
              style: TextStyle(fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('back to menu page'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
