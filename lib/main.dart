import 'package:flutter/material.dart';

void main() =>
    runApp(new MyApp()); // Main function returning the MyApp function .

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        // A scaffold is a design scaffold
        // containing a number of material design widgets .
        appBar: new AppBar(
          title: new Text("flutter is cool"),
          leading: new Icon(
              // object or widget will always be at the logical start of the UI .
              Icons.cake),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.sd_card),
              tooltip:
                  'hi', // text that appear over when the button is held down .
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.pie_chart),
              tooltip:
                  'Wow', // text that appear over when the button is held down .
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.photo_album),
              tooltip:
                  'Snap', // text that appear over when the button is held down .
              onPressed: () => {},
            )
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance), title: new Text("Bank")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.apps), title: new Text("App")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_basket), title: new Text("Shop"))
        ]),
        body: new Container(
          padding: const EdgeInsets.all(
              20.0), // build a barrier around the outside of the object that no
          // no widgets are able to go through .
          child: new Column(
            children: <Widget>[
              // allow us to fund multiple widgets in an array that we want to stack .
              new Text("Hello World"),
              new TextField(
                decoration: new InputDecoration(
                    border: InputBorder.none, hintText: 'Please enter text!'),
              ),
              new Checkbox(
                value: true,
                onChanged: (bool value) {},
              ),
              new Radio<int>(
                value: 0,
                groupValue: 0,
                onChanged: (_) {},
              ),
              new Switch(
                value: false,
                onChanged: (bool value) {},
              ),
              new Image.network(
                  'http://thecatapi.com/api/images/get?format=src&type=gif'),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new RaisedButton(
                      child: const Text("Raised"),
                      onPressed: (){},
                  ),
                  new RaisedButton(
                    child: const Text("Disabled"),
                    onPressed: null,
                  )
                ],
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new FlatButton(
                    child: const Text("Flat"),
                    onPressed: (){},
                  ),
                  new FlatButton(
                    child: const Text("Disabled"),
                    onPressed: null,
                  )
                ],
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new OutlineButton(
                    child: const Text("Outline"),
                    onPressed: (){},
                  ),
                  new RaisedButton(
                    child: const Text("Disabled"),
                    onPressed: null,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
