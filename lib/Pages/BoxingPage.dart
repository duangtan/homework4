import 'package:flutter/material.dart';

class BoxingPage extends StatefulWidget {
  const BoxingPage({Key? key}) : super(key: key);

  @override
  State<BoxingPage> createState() => _BoxingPageState();
}

class _BoxingPageState extends State<BoxingPage> {
  var _text1 = '';
  var _text2 = '';
  var _text3 = '';
  var _scoreRed= '';
  var _scoreBlue = '';
  int scoreR =0;
  int scoreB =0;
  int count =0;

  void _handleClickRed(){
    count++;
    scoreR+=10;
    scoreB+=9;
    int num = 1;
    print('ButtonRedClick');
    if(count==1){
      print('$scoreR Red $count');
      setState(() {
        _text1 = 'R';
      });
    }if(count==2){
      //var result = _score.winR(num);
      print('$scoreR Red $count');
      setState(() {
        _text2 = 'R';
      });
    }if(count==3){
      //var result = _score.winR(num);
      print('$scoreR Red $count');
      setState(() {
        _text3 = 'R';
      });
    }
    setState(() {
      _scoreRed = '$scoreR';
    });
    setState(() {
      _scoreBlue = '$scoreB';
    });
  }

  void _handleClickBlue(){
    count++;
    int num =2;
    scoreR+=9;
    scoreB+=10;
    print( 'ButtonBlueClick');
    if(count==1){
      print('$scoreB Blue $count');
      setState(() {
        _text1 = 'B';
      });
    }if(count==2){
      print('$scoreB Blue $count');
      setState(() {
        _text2 = 'B';
      });
    }if(count==3){
      print('$scoreB Blue $count');
      setState(() {
        _text3 = 'B';
      });
    }
    setState(() {
      _scoreBlue = '$scoreB';
    });
    setState(() {
      _scoreRed = '$scoreR';
    });
  }
  void _reset(){
    count =0;
    setState(() {
      _scoreRed = '';
      _scoreBlue = '';
      scoreB=0;
      scoreR=0;
      _text1 = '';
      _text2 = '';
      _text3 = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('OLYMPIC BOXING SCORING'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/logo.png',height: 50.0,),
              ),
              Row(
                children: [
                  Expanded(child:
                  Container(
                    color: Colors.black,height: 25,
                    child:
                    Center(
                        child: Text("Women's Light (57-60kg) Semi-final",style: new TextStyle(color: Colors.white,fontSize: 15.0),)
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,size: 75.0 ,color: Color(0xFFA00000),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/flag_ireland.png',height: 25.0,),
                                  SizedBox(width: 10.0,),
                                  Text('IRELAND',style: new TextStyle(fontSize: 20.0,),),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  SizedBox(height: 10.0,),
                                  Text('HARRINGTON Kellie Anne',style: new TextStyle(fontSize: 17.0,)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  if(count==3&&scoreR>scoreB)
                  Column(
                    children: [
                      Icon(Icons.check,size: 40.0,color: Colors.green,)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,size: 75.0 ,color: Color(0xFF0000A0),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/flag_thailand.png',height: 25.0,),
                                  SizedBox(width: 10.0,),
                                  Text('THAILAND',style: new TextStyle(fontSize: 20.0,),),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  Text('SEESONDEE Sudaporn',style: new TextStyle(fontSize: 17.0,)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  if(count==3&&scoreB>scoreR)
                    Column(
                      children: [
                        Icon(Icons.check,size: 40.0,color: Colors.green,)
                      ],
                    ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(child: Container(color: Color(0xFFA00000),height: 5.0,)),
                  Expanded(child: Container(color: Color(0xFF0000A0),height: 5.0,)),
                ],
              ),
              SizedBox(height: 20.0,),
              if(count>=1)
                Column(
                children: [
                  Text('ROUND 1'),
                  if(_text1 == 'R')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('10',style: new TextStyle(fontSize: 25.0),),
                        Text('9',style: new TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  if(_text1 == 'B')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('9',style: new TextStyle(fontSize: 25.0),),
                        Text('10',style: new TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  if(count>0&&count<=3)
                    Row(
                      children: [
                        Expanded(child: Divider (color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 10.0,),
              if(count>=2)
                Column(
                children: [
                  Text('ROUND 2'),
                  if(_text2 == 'R')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('10',style: new TextStyle(fontSize: 25.0),),
                        Text('9',style: new TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  if(_text2 == 'B')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('9',style: new TextStyle(fontSize: 25.0),),
                        Text('10',style: new TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  if(count>0&&count<=3)
                    Row(
                      children: [
                        Expanded(child: Divider (color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 10.0,),
              if(count>=3)
                Column(
                children: [
                    Text('ROUND 3'),
                  if(_text3 == 'R')

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('10',style: new TextStyle(fontSize: 25.0),),
                        Text('9',style: new TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  if(_text3 == 'B')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('9',style: new TextStyle(fontSize: 25.0),),
                        Text('10',style: new TextStyle(fontSize: 25.0),),
                      ],
                    ),
                  if(count>0&&count<=3)
                    Row(
                      children: [
                        Expanded(child: Divider (color: Color(0xFFE1E1E1))),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 10.0,),
              if(count>=3)
                Column(
                  children: [
                    Text('TOTAL'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_scoreRed,style: new TextStyle(fontSize: 25.0),),
                          Text(_scoreBlue,style: new TextStyle(fontSize: 25.0),),
                        ],
                      ),
                    if(count>0&&count<=3)
                      Row(
                        children: [
                          Expanded(child: Divider (color: Color(0xFFE1E1E1))),
                        ],
                      ),
                  ],
                ),
            ],
          ),

          SizedBox(height: 20.0,),

          if(count!=3)
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:const EdgeInsets.all(3.0),
                  child: ElevatedButton(
                    onPressed: _handleClickRed,
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xFFA00000),
                      minimumSize: Size(0,55),
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:const EdgeInsets.all(3.0),
                  child: ElevatedButton(
                    onPressed: _handleClickBlue,
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xFF0000A0),
                      minimumSize: Size(0,55),
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),


          if(count==3)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: _reset,
                      style: ElevatedButton.styleFrom(
                        primary:Color(0xFF000000),
                        minimumSize: Size(0,50),
                      ),
                      child: Icon(Icons.clear),
                    ),
                  ),
                ),
              ],
            ),

        ],
      ),
    );
  }
}
