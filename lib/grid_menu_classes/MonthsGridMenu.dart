import 'package:flutter/material.dart';
import 'package:signbase/data_classes/NumbersParticularDataClass.dart';

import '../data_classes/CharToImageDataClass.dart';

class MonthsGridMenu extends StatefulWidget{
  const MonthsGridMenu({Key? key}) : super(key: key);

  @override
  State<MonthsGridMenu> createState() => _MonthsGridMenuState();
}

class _MonthsGridMenuState extends State<MonthsGridMenu> {
  late int index;
  List monthsParticularGridList = [
    NumbersParticularDataClass(number: "31", title: "January", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "28", title: "February", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg"), Image.asset("assets/images/dataset/numbers/8.jpg")], titleList: []),
    NumbersParticularDataClass(number: "31", title: "March", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "30", title: "April", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/alphabets/O.jpg")], titleList: []),
    NumbersParticularDataClass(number: "31", title: "May", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "30", title: "June", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/alphabets/O.jpg")], titleList: []),
    NumbersParticularDataClass(number: "31", title: "July", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "31", title: "August", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "30", title: "September", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/alphabets/O.jpg")], titleList: []),
    NumbersParticularDataClass(number: "31", title: "October", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "30", title: "November", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/alphabets/O.jpg")], titleList: []),
    NumbersParticularDataClass(number: "31", title: "December", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg"), Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
  ];

  List charToImg = [
    CharToImageDataClass(character: "A", image: Image.asset("assets/images/dataset/alphabets/A.jpg")),
    CharToImageDataClass(character: "B", image: Image.asset("assets/images/dataset/alphabets/B.jpg")),
    CharToImageDataClass(character: "C", image: Image.asset("assets/images/dataset/alphabets/C.jpg")),
    CharToImageDataClass(character: "D", image: Image.asset("assets/images/dataset/alphabets/D.jpg")),
    CharToImageDataClass(character: "E", image: Image.asset("assets/images/dataset/alphabets/E.jpg")),
    CharToImageDataClass(character: "F", image: Image.asset("assets/images/dataset/alphabets/F.jpg")),
    CharToImageDataClass(character: "G", image: Image.asset("assets/images/dataset/alphabets/G.jpg")),
    CharToImageDataClass(character: "H", image: Image.asset("assets/images/dataset/alphabets/H.jpg")),
    CharToImageDataClass(character: "I", image: Image.asset("assets/images/dataset/alphabets/I.jpg")),
    CharToImageDataClass(character: "J", image: Image.asset("assets/images/dataset/alphabets/J.jpg")),
    CharToImageDataClass(character: "K", image: Image.asset("assets/images/dataset/alphabets/K.jpg")),
    CharToImageDataClass(character: "L", image: Image.asset("assets/images/dataset/alphabets/L.jpg")),
    CharToImageDataClass(character: "M", image: Image.asset("assets/images/dataset/alphabets/M.jpg")),
    CharToImageDataClass(character: "N", image: Image.asset("assets/images/dataset/alphabets/N.jpg")),
    CharToImageDataClass(character: "O", image: Image.asset("assets/images/dataset/alphabets/O.jpg")),
    CharToImageDataClass(character: "P", image: Image.asset("assets/images/dataset/alphabets/P.jpg")),
    CharToImageDataClass(character: "Q", image: Image.asset("assets/images/dataset/alphabets/Q.jpg")),
    CharToImageDataClass(character: "R", image: Image.asset("assets/images/dataset/alphabets/R.jpg")),
    CharToImageDataClass(character: "S", image: Image.asset("assets/images/dataset/alphabets/S.jpg")),
    CharToImageDataClass(character: "T", image: Image.asset("assets/images/dataset/alphabets/T.jpg")),
    CharToImageDataClass(character: "U", image: Image.asset("assets/images/dataset/alphabets/U.jpg")),
    CharToImageDataClass(character: "V", image: Image.asset("assets/images/dataset/alphabets/V.jpg")),
    CharToImageDataClass(character: "W", image: Image.asset("assets/images/dataset/alphabets/W.jpg")),
    CharToImageDataClass(character: "X", image: Image.asset("assets/images/dataset/alphabets/X.jpg")),
    CharToImageDataClass(character: "Y", image: Image.asset("assets/images/dataset/alphabets/Y.jpg")),
    CharToImageDataClass(character: "Z", image: Image.asset("assets/images/dataset/alphabets/Z.jpg")),
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
    charToImgListFun();
  }

  void charToImgListFun(){
    if(monthsParticularGridList[index].titleList.length == 0){
      String abc = monthsParticularGridList[index].title.toString().toUpperCase();
      for(int i=0;i<abc.length;i++){
        for(int j=0;j<charToImg.length;j++){
          if(charToImg[j].character == abc[i]){
            monthsParticularGridList[index].titleList.add(charToImg[j].image);
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff6C48FF),
          automaticallyImplyLeading: false,
          title: Row(

            children:const [
              Text('OpenSign', style: TextStyle(
                  fontFamily: 'Martel',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),
              ),
            ],
          )

      ),

      body: Container(
        color: const Color(0x1a7c94ea),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 7,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff5f38fa), width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xd96c48ff),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.all(10),
                              child: Text("Month - " + monthsParticularGridList[index].title, style: const TextStyle(fontSize: 25, color: Colors.white),)
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for(int i=0;i<monthsParticularGridList[index].titleList.length;i++)
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 60,
                                      height: 60,
                                      child: monthsParticularGridList[index].titleList[i],
                                    ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.all(10),
                              child: Text("Days - " + monthsParticularGridList[index].number, style: const TextStyle(fontSize: 25, color: Colors.white),)
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for(int i=0;i<monthsParticularGridList[index].numberList.length;i++) ...[
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 60,
                                      height: 60,
                                      child: monthsParticularGridList[index].numberList[i],
                                    ),
                                  ]
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
            ),
            const Expanded(
                flex: 1,
                child: Divider(height: 10,)
            ),
            Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff5f38fa), width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xd96c48ff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Image.asset("assets/images/icons/previous.png", width: 64, height: 64,),
                        onTap: (){
                          setState(() {
                            if(index!=0){
                              --index;
                              charToImgListFun();
                            }
                          });
                        },
                      ),
                      Text(monthsParticularGridList[index].title, style: const TextStyle(fontSize: 40, color: Colors.white,),),
                      InkWell(
                        child: Image.asset("assets/images/icons/next.png", width: 64, height: 64,),
                        onTap: (){
                          setState(() {
                            if(index!=11){
                              ++index;
                              charToImgListFun();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                )
            ),
          ],
        )
      )
    );
  }
}