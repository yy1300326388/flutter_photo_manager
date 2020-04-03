import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class AndroidDevelopingExample extends StatefulWidget {
  @override
  _AndroidDevelopingExampleState createState() =>
      _AndroidDevelopingExampleState();
}

class _AndroidDevelopingExampleState extends State<AndroidDevelopingExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android developing example"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Remove android not exists assets."),
            onPressed: () {
              PhotoManager.editor.android.removeAllNoExistsAsset();
            },
          ),
          RaisedButton(
            child: Text("Refresh no info asset."),
            onPressed: () {
              PhotoManager.editor.android.refreshIncompleteInfoAssets();
            },
          ),
        ],
      ),
    );
  }
}
