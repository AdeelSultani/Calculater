import 'package:calculater/calculater_model.dart';
import 'package:flutter/material.dart';

class  Caluculaterscreen extends StatefulWidget {
  Caluculaterscreen();
  @override
  State<StatefulWidget> createState() => _CalGrid();
}

class _CalGrid extends State< Caluculaterscreen > {

  var hinttext="0";
  var no1;
  var no2;
  String? op;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(

        children: [
          SizedBox(height: 150),
          Container(
            alignment: Alignment.bottomRight,
            child:
            Text(
              "$hinttext",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.black),
              textAlign:TextAlign.right,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top:10),
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                padding: EdgeInsets.all(16),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        hinttext="";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepOrange,
                      backgroundColor: Colors.white,
                      overlayColor: Colors.orange.withOpacity(0.1),

                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("AC", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (hinttext.isNotEmpty) {
                          hinttext = hinttext.substring(0, hinttext.length - 1);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("X", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        no1=int.parse(hinttext.toString());
                        hinttext="";
                        op="%";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("%", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        no1=int.parse(hinttext.toString());
                        hinttext="";
                        op="/";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("/", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="7";
                        }else{
                          hinttext+="7";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("7", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="8";
                        }else{
                          hinttext+="8";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("8", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="9";
                        }else{
                          hinttext+="9";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("9", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        no1=int.parse(hinttext.toString());
                        hinttext="";
                        op="*";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("*", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="4";
                        }else{
                          hinttext+="4";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("4", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="5";
                        }else{
                          hinttext+="5";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("5", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="6";
                        }else{
                          hinttext+="6";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("6", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        no1=int.parse(hinttext.toString());
                        hinttext="";

                        op="-";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("-", style: TextStyle(fontSize: 40, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="1";
                        }else{
                          hinttext+="1";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("1", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="2";
                        }else{
                          hinttext+="2";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("2", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="3";
                        }else{
                          hinttext+="3";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("3", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        no1=int.parse(hinttext.toString());
                        hinttext="";
                        op="+";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("+", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (hinttext.isNotEmpty) {
                          if (hinttext.startsWith('-')) {
                            hinttext = hinttext.substring(1);
                          } else {
                            hinttext = '-' + hinttext;
                          }
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("🔄", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext="0";
                        }else{
                          hinttext+="0";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("0", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(hinttext=="0"){
                          hinttext=".";
                        }else{
                          hinttext+=".";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(".", style: TextStyle(fontSize: 22, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      no2=int.parse(hinttext.toString());

                      var m=calculater(no1, no2, op);
                      var result=m.calculate();
                      setState(() {
                        hinttext=result.toString();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text("=", style: TextStyle(fontSize: 22, color: Colors.deepOrange)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}