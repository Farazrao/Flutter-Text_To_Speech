import 'package:flutter/material.dart';
import 'package:flutter_application_tts_navigation/secondscreen.dart';

 //Here you can see the main void funtion of main.dart file,
void main() {
   
  runApp(const MaterialApp(
    title: "MyApp",
    home: MyDrawer(),
  ));
}
 //Create the StatefuWidget
 
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyDrawerState();
  }
  //Here extend the StatefuWidget
}
class _MyDrawerState extends State<MyDrawer> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter button Demo"),       
      ),
      //This the Body of main.dart file
     body: Center(
        child: RaisedButton(
          child: const Text("Go to next page"),
          color: Colors.blue,
          
          //Navigate route plan,
      
          //directly goes to the second screen.

          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => secondscreen()));
          },
        ),
      ),
    );
  }
}

