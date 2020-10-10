import 'package:flutter/material.dart';
import 'package:twitter_ui_project/slidermenu.dart';
import 'package:twitter_ui_project/tweet.dart';

class Twitter extends StatefulWidget {
  const Twitter({
    Key key,
  }) : super(key: key);

  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  int _index = 0;
  _selectNavBarItem(selectedIndex) {
    setState(() {
      _index = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.mail), title: SizedBox()),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[600],
        onTap: _selectNavBarItem,
      ),
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/twitter.png'),
          height: 40.0,
          width: 40.0,
        ),
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
                      child: Image(
              height: 35.0,
              width: 35.0,
              image: NetworkImage('http://unsplash.it/50/50'),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star_half),
            onPressed: () {},
            color: Colors.blue,
            iconSize: 30.0,
          ),
        ],
      ),
      drawer: SlideMenu(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        child: ListView(
          children: <Widget>[
            Tweet(
              tweetImageLink:
                  r'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/250px-Image_created_with_a_mobile_phone.png',
              tweetMsg: 'What a beautiful view ! view beatiful beach phone..',
              accountImage:
                  r'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/250px-Image_created_with_a_mobile_phone.png',
              accountName: 'NassimFatmi',
              accountTag: 'Nassimfatmi',
              imageTag: '1',
            ),
            Tweet(
              tweetImageLink: null,
              tweetMsg:
                  'What a beautiful view ! view beatiful beach phone..What a beautiful view ! view beatiful beach phoneWhat a beautiful view ! view beatiful beach phone',
              accountImage: 'http://unsplash.it/100/100',
              accountName: 'NassimFatmi',
              accountTag: 'Nassimfatmi',
              imageTag: '2',
            ),
            Tweet(
              tweetImageLink: r'http://unsplash.it/500/500',
              tweetMsg:
                  'chlf What a beautiful view ! view beatiful beach phone..chlef the best ',
              accountImage:
                  r'https://i.skyrock.net/2817/58922817/pics/2624498926_small_1.jpg',
              accountName: 'ChelfiDzb',
              accountTag: 'Chlfidzb02',
              imageTag: '3',
            ),
            Tweet(
              accountImage: 'http://unsplash.it/100/100',
              accountName: 'YalaouiAkli',
              accountTag: 'YalaouiEL9hba',
              imageTag: '4',
              tweetImageLink: 'http://unsplash.it/100/100',
              tweetMsg: 'It was a beatiful day ana 9hba 3tay',
            ),
          ],
        ),
      ),
    );
  }
}
