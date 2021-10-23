import 'package:flutter/material.dart';

class ShippingCard extends StatelessWidget {
  final String profileImgUrl;
  final String nameSurname;
  final String passingTime;
  final String shippingImgUrl;
  final String description;

  const ShippingCard(
      {Key key,
      this.profileImgUrl,
      this.nameSurname,
      this.passingTime,
      this.shippingImgUrl,
      this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(profileImgUrl),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameSurname,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              passingTime,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(height: 15.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.0),
              Image.network(
                shippingImgUrl,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BtnWithIconText(
                      icon: Icons.favorite,
                      text: "Begen",
                      function: () {
                        print("Begen butonuna basildi");
                      }),
                  BtnWithIconText(
                      icon: Icons.comment,
                      text: "Yorum Yap",
                      function: () {
                        print("Yorum yap butonuna basildi");
                      }),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "Paylas",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BtnWithIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final function;

  BtnWithIconText({this.icon, this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: function,
        child: Container(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey,
              ),
              SizedBox(width: 3),
              Text(
                text,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
