import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sociaworld/profilescreen.dart';
import 'package:sociaworld/shippingcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "SociaWorld",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple[300],
              size: 32.0,
            ),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    announcement("Kamil seni takip etti", "2 dk. once"),
                    announcement("Seda gonderine yorum yapti", "3 gun once"),
                    announcement("Ahmet mesaj gonderdi", "3 hafta once"),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0),
              ]),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  createProfileCard(
                    "Selcuk",
                    "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg",
                    "Selcuk Okur",
                    "https://cdn.pixabay.com/photo/2020/11/01/21/45/architecture-5705042_1280.jpg",
                    "200",
                    "210",
                    "10",
                  ),
                  createProfileCard(
                    "Mehtap",
                    "https://scontent.fist7-2.fna.fbcdn.net/v/t1.0-9/123368452_2703892833181992_9133321550937209350_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_ohc=dV_H9NgZYoIAX-SK2GI&_nc_ht=scontent.fist7-2.fna&oh=4a8274b30fecdc0edbb5e66a339ddad4&oe=60395710",
                    "Mehtap Celik",
                    "https://scontent.fist7-2.fna.fbcdn.net/v/t1.0-9/34907735_2049804715257477_2409961606403325952_o.jpg?_nc_cat=100&ccb=2&_nc_sid=e3f864&_nc_ohc=H7Sx8RyhHsYAX9GFAPy&_nc_ht=scontent.fist7-2.fna&oh=908d4e38251a4c1ab4d5e81da44adcec&oe=603B134C",
                    "230",
                    "201",
                    "200",
                  ),
                  createProfileCard(
                    "Belma",
                    "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-657116_1280.jpg",
                    "Belma Gunduz",
                    "https://cdn.pixabay.com/photo/2021/01/21/09/58/grebe-5936866_1280.jpg",
                    "300",
                    "400",
                    "5",
                  ),
                  createProfileCard(
                    "Yildiz",
                    "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_1280.jpg",
                    "Yildiz Kenter",
                    "https://cdn.pixabay.com/photo/2020/06/21/01/50/still-life-5322950_1280.jpg",
                    "112",
                    "113",
                    "7",
                  ),
                  createProfileCard(
                    "Nadir",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_1280.jpg",
                    "Nadir Gundogar",
                    "https://cdn.pixabay.com/photo/2021/01/05/01/15/home-5889366_1280.jpg",
                    "124",
                    "230",
                    "111",
                  ),
                  createProfileCard(
                    "Jason",
                    "https://media.toofab.com/2017/12/14/manny-jacinto-810x610.jpg",
                    "Jason Mendoza",
                    "https://cdn.pixabay.com/photo/2021/01/14/20/32/fish-5917864_1280.jpg",
                    "700",
                    "600",
                    "50",
                  )
                ],
              )),
          SizedBox(height: 10.0),
          ShippingCard(
            nameSurname: "Hakan Yildiz",
            passingTime: "1 sene once",
            description: "Gecen sene cekildim",
            profileImgUrl:
                "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_1280.jpg",
            shippingImgUrl:
                "https://cdn.pixabay.com/photo/2012/08/06/00/53/bridge-53769_1280.jpg",
          ),
          ShippingCard(
            nameSurname: "Yildiz Mert",
            passingTime: "2 ay once",
            description: "Manzaraya hayran kaldim",
            profileImgUrl:
                "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_1280.jpg",
            shippingImgUrl:
                "https://cdn.pixabay.com/photo/2016/10/18/21/22/beach-1751455_1280.jpg",
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding announcement(String message, String passedTime) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message,
            style: TextStyle(fontSize: 15.0),
          ),
          Text(passedTime),
        ],
      ),
    );
  }

  Widget createProfileCard(
    String username,
    String imageUri,
    String nameSurname,
    String coverImg,
    String follower,
    String following,
    String sharing,
  ) {
    return Material(
      child: InkWell(
        onTap: () async {
          //Future<String> returnedData = Navigator.of(context).push(
          bool returnedData = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => ProfileScreen(
                profileImg: imageUri,
                username: username,
                nameSurname: nameSurname,
                coverImg: coverImg,
                follower: follower,
                following: following,
                sharing: sharing,
              ),
            ),
          );
          if (returnedData) print("Kullanici profil sayfasina dondu");
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: username,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(imageUri),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.green,
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                username,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
