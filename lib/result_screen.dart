import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/main.dart';

class ResultScreen extends StatefulWidget {

  bool SadOrSmile;


  ResultScreen(this.SadOrSmile);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 180,
                child:
                widget.SadOrSmile ? Image.asset("image/smile_image.png"):Image.asset("image/sad_image.png")),
                widget.SadOrSmile ? Text("Buldunuz Tebrikler",style: TextStyle(color: Colors.black87,fontSize: 22)) :
                Text("Malesef Bulamadınız",style: TextStyle(color: Colors.black87,fontSize: 22) ,),
            SizedBox(
              width: 150,
              height: 70,
              child: ElevatedButton(
                  style:  ElevatedButton.styleFrom(
                    backgroundColor : Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0), // Set the radius for rounded corners
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Tekrar Oyna",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );;
  }
}
