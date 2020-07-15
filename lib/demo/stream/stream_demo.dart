import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    // TODO: implement dispose
    _streamDemo.close(); //小部件移除时执行
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    print('Create a stream.');
    _streamDemo = StreamController<String>();
    _sinkDemo = _streamDemo.sink;

    print('Start listening on a stream.');
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    print('Initialized completed.');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print(data);
  }

  void onError(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done!');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    // throw 'Something happend';
    return 'hello~';
  }

  void _addDataToStream() async {
    print('Add data to stream');
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  void _pauseStream() {
    print('Pause subscription');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resum subscription');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscription');
    _streamDemoSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_data),
              // StreamBuilder(
              //   stream: _streamDemo.stream,
              //   initialData: '...',
              //   builder: (context, snapshot) {
              //     return Text('${snapshot.data}');
              //   },
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Add'),
                    onPressed: _addDataToStream,
                  ),
                  FlatButton(
                    child: Text('Pause'),
                    onPressed: _pauseStream,
                  ),
                  FlatButton(
                    child: Text('Resum'),
                    onPressed: _resumeStream,
                  ),
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: _cancelStream,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
