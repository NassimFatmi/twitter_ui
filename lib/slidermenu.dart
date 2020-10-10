import 'package:flutter/material.dart';
import 'slideritem.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({
    Key key,
  }) : super(key: key);

  @override
  _SlideMenuState createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: CircleAvatar(
                  radius: 30.0,
                  child: Image(
                    image: NetworkImage('http://unsplash.it/100/100'),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Nassim Fatmi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),

              SizedBox(
                height: 5.0,
              ),

              Text(
                '@Nassimfatmi',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 15.0,
              ),
              //followers
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '51',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '3',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Followers', style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Divider(
          height: 2.0,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            children: <Widget>[
              BuildSliderItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 25.0,
                  color: Colors.grey[700],
                ),
                text: 'Profile',
              ),
              BuildSliderItem(
                icon: Icon(
                  Icons.list,
                  size: 25.0,
                  color: Colors.grey[700],
                ),
                text: 'Lists',
              ),
              BuildSliderItem(
                icon: Icon(
                  Icons.message,
                  size: 25.0,
                  color: Colors.grey[700],
                ),
                text: 'Topics',
              ),
              BuildSliderItem(
                icon: Icon(
                  Icons.bookmark_border,
                  size: 25.0,
                  color: Colors.grey[700],
                ),
                text: 'Bookmarks',
              ),
              BuildSliderItem(
                icon: Icon(
                  Icons.flash_on,
                  size: 25.0,
                  color: Colors.grey[700],
                ),
                text: 'Moments',
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                height: 2.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Settings and privacy',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Help',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
