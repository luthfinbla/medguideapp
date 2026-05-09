import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/screens/reminder_screen/new_entry.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          children: [
            TopContainer(),
            SizedBox(height: 10,),
            //the widget take space as per need
            Flexible(
              child: BottomContainer()
            ),
          ],
        ),
      ),
      floatingActionButton: InkResponse(
        onTap: () {
          //go to
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>NewEntry(),
            ),
          );
        },
        child: SizedBox(
          width: 65,
          height: 65,
          child: Card(
            color: pcolor,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            child: Icon(
              Icons.add_outlined,
              color: wcolor,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            bottom: 1,
          ),
        ),
        Text(
            'Tambahkan daftar Obat disini',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
            bottom: 1,
            ),
            child: Text(
              'Jangan lupa minum obat, ya!',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
            bottom: 1,
            ),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No Medicine',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}