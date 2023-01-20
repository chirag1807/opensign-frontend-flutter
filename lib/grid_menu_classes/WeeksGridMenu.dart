import 'package:flutter/material.dart';
import 'package:signbase/data_classes/NumbersParticularDataClass.dart';

import '../data_classes/CharToImageDataClass.dart';

class WeeksGridMenu extends StatefulWidget{
  const WeeksGridMenu({Key? key}) : super(key: key);

  @override
  State<WeeksGridMenu> createState() => _WeeksGridMenuState();
}

class _WeeksGridMenuState extends State<WeeksGridMenu> {
  late int index;

  List weeksParticularGridList = [
    NumbersParticularDataClass(number: "1", title: "Monday", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg")], titleList: []),
    NumbersParticularDataClass(number: "2", title: "Tuesday", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg")], titleList: []),
    NumbersParticularDataClass(number: "3", title: "Wednesday", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg")], titleList: []),
    NumbersParticularDataClass(number: "4", title: "Thursday", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg")], titleList: []),
    NumbersParticularDataClass(number: "5", title: "Friday", numberList: [Image.asset("assets/images/dataset/numbers/5.jpg")], titleList: []),
    NumbersParticularDataClass(number: "6", title: "Saturday", numberList: [Image.asset("assets/images/dataset/numbers/6.jpg")], titleList: []),
    NumbersParticularDataClass(number: "7", title: "Sunday", numberList: [Image.asset("assets/images/dataset/numbers/7.jpg")], titleList: []),
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
    if(weeksParticularGridList[index].titleList.length == 0){
      String abc = weeksParticularGridList[index].title.toString().toUpperCase();
      for(int i=0;i<abc.length;i++){
        for(int j=0;j<charToImg.length;j++){
          if(charToImg[j].character == abc[i]){
            weeksParticularGridList[index].titleList.add(charToImg[j].image);
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
                      color: const Color(0xd96c48ff)
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
                              child: Text("Week - " + weeksParticularGridList[index].title, style: const TextStyle(fontSize: 25, color: Colors.white),)
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for(int i=0;i<weeksParticularGridList[index].titleList.length;i++)
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 60,
                                      height: 60,
                                      child: weeksParticularGridList[index].titleList[i],
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
                              child: Text("Day - " + weeksParticularGridList[index].number, style: const TextStyle(fontSize: 25, color: Colors.white),)
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for(int i=0;i<weeksParticularGridList[index].numberList.length;i++) ...[
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 60,
                                      height: 60,
                                      child: weeksParticularGridList[index].numberList[i],
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
                      color: const Color(0xd96c48ff)
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
                      Text(weeksParticularGridList[index].title, style: const TextStyle(fontSize: 40, color: Colors.white,),),
                      InkWell(
                        child: Image.asset("assets/images/icons/next.png", width: 64, height: 64,),
                        onTap: (){
                          setState(() {
                            if(index!=6){
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
        ))
    );
  }
}