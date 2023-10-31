import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/result_screen.dart';

class PredictionScreen extends StatefulWidget {
  const PredictionScreen({super.key});

  @override
  State<PredictionScreen> createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  var tfTahmin=TextEditingController();
  int kalanHak=5;
  String yonlendirme="Tahminiz bekleniyor :)";
  int randomSayi=0;
  @override
  void initState() {
    super.initState();
    randomSayi=Random().nextInt(101);//0-100 arası bir sayı oluşturur
    print("Random sayımız = $randomSayi");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Kalan Hak : $kalanHak",style: TextStyle(color: Colors.black87,fontSize: 22),),
            Text("Yardım:  $yonlendirme",style: TextStyle(color: Colors.black45,fontSize: 18),),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                controller:tfTahmin,
                decoration: InputDecoration(
                  hintText: "Tahmin",
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 2.0),

                  ),
                ),

                style: TextStyle(fontSize: 16,color: Colors.black54),
                keyboardType: TextInputType.number,
          

              ),
            ),
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
                    setState(() {
                      kalanHak--;
                    });
                    if(kalanHak < 0 ){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultScreen(false)),);
                    }
                    int tahmin =int.parse(tfTahmin.text);
                    if(randomSayi == tahmin){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultScreen(true)),);
                    }
                    if(tahmin > randomSayi){
                      setState(() {
                        yonlendirme="Tahmininizi Azaltabilirsiniz";
                      });

                    }
                    if(tahmin < randomSayi){
                      setState(() {
                        yonlendirme="Tahmininizi Arttırabilirsiniz";
                      });
                      ;
                    }

                  },
                  child: Text("Tahmin Et",style: TextStyle(color: Colors.white),)),
            )


          ],
        ),
      ),
    );;
  }
}
