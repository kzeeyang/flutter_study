import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          //文字按钮
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, //渐变效果
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          //图标加文字按钮
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, //渐变效果
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder( //斜角矩形
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(), //圆角矩形
            ),
          ),
          child: RaisedButton(
            //带背景按钮
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey, //渐变效果
            elevation: 0.0, //没有阴影效果
            color: Theme.of(context).accentColor, //设置背景颜色
            // textColor: Colors.white,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          //带背景图标按钮
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, //渐变效果
          elevation: 12.0, //阴影效果
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder( //斜角矩形
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(), //圆角矩形
            ),
          ),
          child: OutlineButton(
            //带背景按钮
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], //渐变效果
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // color: Theme.of(context).accentColor, //设置背景颜色
            // textColor: Colors.white,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          //带背景图标按钮
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, //渐变效果
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixedWidthButtonDemo = Container(
      width: 130.0, //固定宽带
      child: OutlineButton(
        child: Text('Button'),
        onPressed: () {},
        splashColor: Colors.grey[100], //渐变效果
        borderSide: BorderSide(
          color: Colors.black,
        ),
        textColor: Colors.black,
        highlightedBorderColor: Colors.grey,
        // color: Theme.of(context).accentColor, //设置背景颜色
        // textColor: Colors.white,
        // textTheme: ButtonTextTheme.primary,
      ),
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          //占满所有可用宽度
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], //渐变效果
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // color: Theme.of(context).accentColor, //设置背景颜色
            // textColor: Colors.white,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          //占满所有可用宽度
          flex: 2, //设置占用比例
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], //渐变效果
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // color: Theme.of(context).accentColor, //设置背景颜色
            // textColor: Colors.white,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget bottonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(
                horizontal: 64.0,
              ),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100], //渐变效果
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
                // color: Theme.of(context).accentColor, //设置背景颜色
                // textColor: Colors.white,
                // textTheme: ButtonTextTheme.primary,
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100], //渐变效果
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
                // color: Theme.of(context).accentColor, //设置背景颜色
                // textColor: Colors.white,
                // textTheme: ButtonTextTheme.primary,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              flatButtonDemo,
              raisedButtonDemo,
              outlineButtonDemo,
              fixedWidthButtonDemo,
              expandedButtonDemo,
              bottonBarDemo,
            ],
          )),
    );
  }
}
