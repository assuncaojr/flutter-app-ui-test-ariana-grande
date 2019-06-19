import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ArianaGrandeScreen();
  }
}

class ArianaGrandeScreen extends StatefulWidget {
  @override
  _ArianaGrandeScreenState createState() => _ArianaGrandeScreenState();
}

class _ArianaGrandeScreenState extends State<ArianaGrandeScreen> {
  double baseHeight = 640.0;

  double screenAwareSize(double size, BuildContext context) {
    return size * MediaQuery.of(context).size.height / baseHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _renderTop(),
                _renderHeaderPlaylist(),
                _renderListMusic()
                // Text('Teste')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderTop () => Stack(
    overflow: Overflow.visible,
    children: <Widget>[
      Container(
        height: 450,
        width: double.infinity,
        child: ClipRRect(
          child: Image.asset('images/ariana-grande.png', fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(96)
          ),
        ),
      ),
      Container(
        width: double.infinity,
        // height: 250,
        margin: EdgeInsets.only(top: 10),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.dehaze, color: Colors.white.withOpacity(.7)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.info_outline, color: Colors.white.withOpacity(.7), size: 16),
              onPressed: () {},
            )
          ],
        ),
      ),
            
      Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width * .6,
        padding: EdgeInsets.only(top: 220, left: 40),
        child: Text(
          'Tranding', 
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(186, 186, 213, .9),
            fontFamily: 'SofiaPro'
          )
        ),
      ),
      Container(
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width * .6,
        padding: EdgeInsets.only(top: 280, left: 40),
        child: Text(
          'Ariana Grande',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Bichette',
            fontSize: 105,
            height: .7
          )
        )
      ),
      Positioned(
        bottom: -50,
        right: 20,
        child: FractionalTranslation(
          translation: Offset(0.0, -0.5),
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Color.fromRGBO(125, 124, 255, 1),
            child: Icon(
              Icons.play_arrow,
              size: 40
            ),
            onPressed: () {},
          ),
        ),
      )
    ]
  );

  Widget _renderHeaderPlaylist () {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Popular', style: TextStyle(fontFamily: 'SofiaPro', fontWeight: FontWeight.bold, fontSize: 22.0),),
          Text(
            'Show all', 
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'SofiaPro',
              fontSize: 14.0,
              height: 2
            )
          )
        ],
      ),
    );
  }

  Widget _renderListMusic() => Container(
    padding: EdgeInsets.only(left: 35, right: 25),
    child: Table(
      children: [
        TableRow(
          decoration: BoxDecoration(
            border:  Border(
              bottom: BorderSide(
                style: BorderStyle.solid,
                color: Colors.black.withOpacity(.2)
              )
            )
          ),
          children: [
            TableCell(
              child: Text(
                'No tears left to cry',
                style: TextStyle(
                  color: Colors.black87, 
                  height: 2
                )
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('5:20', textAlign: TextAlign.end, style: TextStyle(color: Colors.black54)),
                IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.black54, size: 20),
                  onPressed: () {}
                ),
                
              ]
            ),
          ],
        ),
      ],
    ),
  );
}
