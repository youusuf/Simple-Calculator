import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  void doAdd(){
    setState(() {
      num1  = int.parse(t1.text);
      num2  = int.parse(t2.text);
      sum = num1+num2;
    });
  }
  void doSub(){
    setState(() {
      num1  = int.parse(t1.text);
      num2  = int.parse(t2.text);
      sum = num1-num2;
    });
  }
  void doMul(){
    setState(() {
      num1  = int.parse(t1.text);
      num2  = int.parse(t2.text);
      sum = num1*num2;
    });
  }
  void doDiv(){
    setState(() {
      num1  = int.parse(t1.text);
      num2  = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void clear(){
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
            "Calculator"
        ),
      ),
      body:Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OUTPUT : $sum',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold

              ),
            ),
            Container(
              height: 15.0,
            ),
            TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  hintText: "Enter number one"
              ),
            ),
            Container(
              height: 15.0,
            ),
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  hintText: "Enter number two"
              ),
            ),
            Container(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    color: Colors.deepOrange,
                    onPressed:(){
                      doAdd();
                    },
                    child:Text("+")
                ),
                Container(width: 15.0,),
                RaisedButton(
                    color: Colors.greenAccent,
                    onPressed:(){
                      doSub();
                    },
                    child:Text("-")
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.deepPurple)
                    ),
                    color: Colors.white,
                    onPressed:(){
                      doMul();
                    },
                    child:Text("*")
                ),
                Container(width: 15.0,),
                RaisedButton(
                    color: Colors.blue,
                    onPressed:(){
                      doDiv();
                    },
                    child:Text("/")
                ),
              ],
            ),
            RaisedButton(
              onPressed:(){
                clear();
              },
              child: Text("CLEAR"),
            )
          ],
        ),
      ),
    );
  }
}
