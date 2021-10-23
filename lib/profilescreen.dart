import 'package:flutter/material.dart';
import 'package:sociaworld/shippingcard.dart';

class ProfileScreen extends StatelessWidget {
  final String nameSurname;
  final String username;
  final String profileImg;
  final String coverImg;
  final String follower;
  final String following;
  final String sharing;

  const ProfileScreen({
    Key key,
    this.nameSurname,
    this.username,
    this.profileImg,
    this.coverImg,
    this.follower,
    this.following,
    this.sharing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230.0,
                //color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(coverImg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: username,
                  child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(width: 2.0, color: Colors.white),
                        // color: Colors.lightBlue,
                        image: DecorationImage(
                            image: NetworkImage(profileImg), fit: BoxFit.cover),
                      )),
                ),
              ),
              Positioned(
                left: 150.0,
                bottom: 5.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameSurname,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      username,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.0,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () => Navigator.pop(context, true),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Count(follower, "Takipci"),
                Count(following, "Takip"),
                Count(sharing, "Paylasim"),
              ],
            ),
          ),
          ShippingCard(
            nameSurname: "Jason Mendoza",
            passingTime: "6 ay once",
            description: "Diziden :)",
            profileImgUrl:
                "https://static.wikia.nocookie.net/thegoodplace/images/4/48/4jason.jpg/revision/latest/scale-to-width-down/620?cb=20190914140705",
            shippingImgUrl:
                "https://i.guim.co.uk/img/media/f98772250a874b47411a1b1f0ca34bf68d8aabe9/250_388_1791_1075/master/1791.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=4534d4362abbc4a4cdcc4c6f30a6a364",
          ),
        ],
      ),
    );
  }

  Column Count(String sayi, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 1.0),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
