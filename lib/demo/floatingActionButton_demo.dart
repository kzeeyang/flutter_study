import 'package:flutter/material.dart';

//悬浮按钮
class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0, //与下层的高度
    backgroundColor: Colors.black87, //设置背景颜色，默认跟随主题
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30.0),
    // ), //设置按钮形状，默认圆形
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(), //自动切出边缘的形状
      ),
    );
  }
}
