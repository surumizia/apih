import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main(){
  runApp(hello());
}
class hello extends StatefulWidget {
  const hello({super.key});

  @override
  State<hello> createState() => _helloState();
}
String stringresponse ="";
Map<String,dynamic>mapresponse=Map<String,dynamic>();

class _helloState extends State<hello> {
  Future fake()async{
    http.Response response;
   response =await http.get(Uri.parse('https://reqres.in/api/users/2'));
   if (response.statusCode==200){
     setState(() {
     //  stringresponse=response.body;

     });
   }
  }
  @override
  void initState() {
    fake();
    super.initState();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text('Fake API'),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            child: Center(child: Text(stringresponse.toString(),style: TextStyle(color: Colors.white),)),
            color: Colors.pink[900],
          ),
        ),
      ),
    );
  }
}
