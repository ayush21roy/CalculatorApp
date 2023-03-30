// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1=0, num2=0, op=0;
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();

  void clear()
  {
    setState(() {
      t1.clear();
      t2.clear();
      op = 0;
    });
  }
  void add()
  {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1+num2;
    });
  }
  void sub()
  {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1-num2;
    });
  }
  void mul()
  {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1*num2;
    });
  }
  void div()
  {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: 
      Column(

        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Text("OUTPUT : $op",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
          color: Colors.redAccent),
          ),
          TextField( 
              decoration: InputDecoration(hintText: " Enter Number 1",
              contentPadding: EdgeInsets.all(10)),
              keyboardType: TextInputType.number,
             style:TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold,
             ),
             controller: t1,
             ),  

            TextField( 
                decoration: InputDecoration(hintText: " Enter Number 2",
                contentPadding: EdgeInsets.all(10)),
                keyboardType: TextInputType.number,
               style:TextStyle(
                fontSize: 15,fontWeight: FontWeight.bold,
               ),
               controller: t2,
               ),
               

               Padding(padding: EdgeInsets.only(top: 20.0)),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(onPressed: ()=>add(),
                  // ignore: sort_child_properties_last
                  child: Text("+",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  color: Colors.amber,
                  ),
                  
                  MaterialButton(onPressed: ()=>sub(),
                  // ignore: sort_child_properties_last
                  child: Text("-",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  color: Colors.amber,
                  ),
                ],          
               ),
                Padding(padding: EdgeInsets.only(top: 20.0)),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(onPressed: ()=>mul(),
                  // ignore: sort_child_properties_last
                  child: Text("*",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  color: Colors.amber,
                  ),
                  
                  MaterialButton(onPressed: ()=>div(),
                  // ignore: sort_child_properties_last
                  child: Text("/",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  color: Colors.amber,
                  ),
                ],          
               ),

               Padding(padding: EdgeInsets.only(top: 20.0)),

                MaterialButton(onPressed: ()=>clear(),
                  // ignore: sort_child_properties_last
                  child: Text("Clear",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  color: Colors.amber,
                  ),
        ],
      ),
      
       
      
    );
    
  }
}