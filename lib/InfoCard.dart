import 'package:flutter/material.dart';
class InfoCard extends StatefulWidget {
  String name;
  int age;
  String country;
  String home_country;
  String nameL;
  String brand;
  String categoryL;
  String nameM;
  int price;
  List categoryM=List();

  InfoCard({this.name,this.age,this.country,this.home_country,this.nameL,this.brand,this.categoryL,this.nameM,this.price,this.categoryM});
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
              Text('Name: ${widget.name}'),
              Text('Age: ${widget.age}'),
              Text('Country: ${widget.country}'),
              Text('Home Country: ${widget.home_country}'),
              Center(child:Text('luggage', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),),
              Text('${widget.nameL}'),
              Text('${widget.brand}'),
              Text('${widget.categoryL}'),
              Center(child:Text('medicals', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),),
              Text('${widget.nameM}'),
              Text('${widget.price}'),
              Text('${widget.categoryM}'),
            ],
          ),
        ),
      ),
    );
  }
}
