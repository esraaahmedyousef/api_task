import 'package:flutter/material.dart';
class InfoCard extends StatefulWidget {
  String name;
  int age;
  String country;
  String home_country;

  InfoCard({this.name,this.age,this.country,this.home_country});
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
         width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left:MediaQuery.of(context).padding.left+10 ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [Text('Name: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.name}',style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [Text('Age: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.age}',style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [Text('Country: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.country}',style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [Text('Home Country: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.home_country}',style: TextStyle(fontSize: 20)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
