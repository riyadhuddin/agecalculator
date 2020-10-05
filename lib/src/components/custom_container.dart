import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final bool isCircle;

  const CustomContainer(
      {Key key, this.height, this.width, this.isCircle = false, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: isCircle ? null : BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            color: Colors.black12,
            blurRadius: 5,
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            color: Colors.white,
            blurRadius: 5,
          ),
        ],
      ),
      child: child,
    );
  }
}
