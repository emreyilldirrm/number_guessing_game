import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/prediction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayı Tahmin Oyunu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text("Tahmin Oyunu",style: TextStyle(color: Colors.black54,fontSize: 22),),
          SizedBox(
              width: 180,
              child: Image.asset("image/dice_image.png")),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PredictionScreen()),);
                },
                child: Text("Oyun Başla",style: TextStyle(color: Colors.white),)),
          )
          ],
        ),
      ),
    );
  }
}
