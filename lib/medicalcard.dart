import 'package:flutter/material.dart';
class MedicalCard extends StatefulWidget {
  String nameM;
  int price;
  List categoryM=List();
  MedicalCard({this.nameM,this.price,this.categoryM});
  @override
  _MedicalCardState createState() => _MedicalCardState();
}

class _MedicalCardState extends State<MedicalCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height*0.5 ,
          padding: EdgeInsets.only(left:MediaQuery.of(context).padding.left+10 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // Center(child:Text('Medical', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),),
              Row(
                children: [Text('Name: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.nameM}' ,style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [Text('Price: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.price}', style: TextStyle(fontSize: 20),),
                ],
              ),
              Row(
                children: [Text('Category: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('${widget.categoryM}' ,style: TextStyle(fontSize: 20),),
                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
