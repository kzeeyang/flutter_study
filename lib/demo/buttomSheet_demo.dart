import 'package:flutter/material.dart';

class ButtomSheetDemo extends StatefulWidget {
  @override
  _ButtomSheetDemoState createState() => _ButtomSheetDemoState();
}

class _ButtomSheetDemoState extends State<ButtomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) {
      return BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: 90.0,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16.0,
              ),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      },
    );

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('ButtonSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open ButtomSheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('Modal ButtomSheet'),
                  onPressed: _openModalBottomSheet,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
