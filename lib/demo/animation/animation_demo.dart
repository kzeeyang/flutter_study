import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController animationDemoController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve; //曲线动画

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationDemoController = AnimationController(
      // value: 32.0, //初始值
      // lowerBound: 32.0, //最小值
      // upperBound: 100.0, //上限值，默认是1.0
      duration: Duration(milliseconds: 1000),
      vsync: this, //防止消耗动画外不必要的资源
    );

    curve = CurvedAnimation(
        parent: animationDemoController, curve: Curves.bounceInOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    animationColor =
        ColorTween(begin: Colors.red, end: Colors.red[900]).animate(curve);

    // animationDemoController.addListener(() {
    //   // print('${animationDemoController.value}');
    //   setState(() {});
    // });

    animationDemoController.addStatusListener((status) {
      print('$status');
    });

    // animationDemoController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    animationDemoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedHeart(
        animations: [
          animation,
          animationColor,
        ],
        controller: animationDemoController,
      ),
    );
  }
}

class AnimatedHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
        }
      },
    );
  }
}
