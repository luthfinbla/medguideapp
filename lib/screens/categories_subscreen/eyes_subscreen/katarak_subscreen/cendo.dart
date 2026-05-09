import 'package:flutter/material.dart';
import 'package:medguideapp/colors.dart';
import 'package:medguideapp/components/mybutton.dart';

class Cendo extends StatefulWidget {
  const Cendo({Key? key}) : super(key: key);

  @override
  _CendoState createState() => _CendoState();
}

class _CendoState extends State<Cendo> {

  //quantity
  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  //increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  //add to cart
  void addToCart() {

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                //image
                Image.asset('assets/images/cendo.png',
                height: 200,),
                SizedBox(height: 15,),
                //nama obat
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Cendo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //desc
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "deskripsi",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                //add to cart button
                Container(
                  color: Colors.lightBlue,
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      //price + quantity
                      Row(
                        children: [
                          //price
                          Text(
                            "Rp.30.000",
                            style: TextStyle(
                              color: wcolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ), 
                          ),
                          //quantity
                          Row(
                            children: [
                              //minus button
                              Container(
                                decoration: BoxDecoration(
                                  color: pcolor,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: decrementQuantity, 
                                  icon: Icon(Icons.remove,
                                  color: wcolor,)
                                ),
                              ),
                              //quantity count
                              SizedBox(
                                width: 40,
                                child: Center(
                                  child: Text(
                                  quantityCount.toString(),
                                  style: TextStyle(
                                    color: wcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              //plus butto
                              Container(
                                decoration: BoxDecoration(
                                  color: pcolor,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: incrementQuantity, 
                                  icon: Icon(Icons.add,
                                  color: wcolor,)
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25,),
                      //add to cart button
                      MyButton(text: "Tambah ke daftar Obat", onTap: addToCart),
                    ],
                  ),
                )
              ],
            ))
        ],
      )
    );
  }
}
