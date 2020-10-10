import 'package:flutter/material.dart';

class BuildSliderItem extends StatelessWidget {
  final Icon icon;
  final String text;
  const BuildSliderItem({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            this.icon,
            SizedBox(
              width: 15.0,
            ),
            Text(
              this.text,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
