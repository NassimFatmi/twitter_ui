import 'package:flutter/material.dart';
import 'package:twitter_ui_project/viewimage.dart';

class Tweet extends StatefulWidget {
  String tweetImageLink;
  String tweetMsg;
  String accountName;
  String accountTag;
  String accountImage;
  String imageTag;

  Tweet({
    Key key,
    this.accountImage,
    this.accountName,
    this.accountTag,
    this.tweetImageLink,
    this.tweetMsg,
    this.imageTag
  }) : super(key: key);

  @override
  _TweetState createState() => _TweetState();
}

class _TweetState extends State<Tweet> {

  Color currentLikeColor = Colors.grey[500];

  Widget creatTweetImage() {
    if (widget.tweetImageLink != null) {
      return GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewImage(
                          imageLink: widget.tweetImageLink,
                          imageTag: widget.tweetImageLink,
                        )));
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Hero(
            tag: widget.imageTag,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(widget.tweetImageLink),
              height: 250,
              width: 250,
            ),
          ),
        ),
      );
    }
    else {
      return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(widget.accountImage),
              radius: 30.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        widget.accountName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('@${widget.accountTag}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    child: Text(
                      widget.tweetMsg,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  creatTweetImage(),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.repeat,
                          color: Colors.grey[500],
                          size: 25.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.comment,
                          color: Colors.grey[500],
                          size: 25.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: currentLikeColor,
                          size: 25.0,
                        ),
                        onPressed: () {
                          setState(() {
                            currentLikeColor = currentLikeColor == Colors.red ? Colors.grey[500] : Colors.red;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey[500],
                          size: 25.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
