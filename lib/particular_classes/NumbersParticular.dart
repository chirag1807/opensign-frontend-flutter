import 'package:flutter/material.dart';
import 'package:signbase/data_classes/NumbersParticularDataClass.dart';

import '../data_classes/CharToImageDataClass.dart';

class NumbersParticular extends StatefulWidget {
  final int numbersGridListIndex;
  const NumbersParticular({Key? key, required this.numbersGridListIndex}) : super(key: key);

  @override
  State<NumbersParticular> createState() => _NumbersParticularState();
}

class _NumbersParticularState extends State<NumbersParticular> {
  late int index;
  List numbersParticularGridList = [
    NumbersParticularDataClass(number: "1", title: "ONE", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "2", title: "TWO", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "3", title: "THREE", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "4", title: "FOUR", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "5", title: "FIVE", numberList: [Image.asset("assets/images/dataset/numbers/5.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "6", title: "SIX", numberList: [Image.asset("assets/images/dataset/numbers/6.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "7", title: "SEVEN", numberList: [Image.asset("assets/images/dataset/numbers/7.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "8", title: "EIGHT", numberList: [Image.asset("assets/images/dataset/numbers/8.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "9", title: "NINE", numberList: [Image.asset("assets/images/dataset/numbers/9.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "10", title: "TEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/alphabets/O.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "11", title: "ELEVEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "12", title: "TWELVE", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "13", title: "THIRTEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "14", title: "FOURTEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "15", title: "FIFTEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/5.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "16", title: "SIXTEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/6.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "17", title: "SEVENTEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/7.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "18", title: "EIGHTEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/8.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "19", title: "NINETEEN", numberList: [Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/9.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "20", title: "TWENTY", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/alphabets/O.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "21", title: "TWENTY ONE", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "22", title: "TWENTY TWO", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "23", title: "TWENTY THREE", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "24", title: "TWENTY FOUR", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "25", title: "TWENTY FIVE", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/5.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "26", title: "TWENTY SIX", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/6.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "27", title: "TWENTY SEVEN", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/7.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "28", title: "TWENTY EIGHT", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/8.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "29", title: "TWENTY NINE", numberList: [Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/9.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "30", title: "THIRTY", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/alphabets/O.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "31", title: "THIRTY ONE", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "32", title: "THIRTY TWO", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "33", title: "THIRTY THREE", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "34", title: "THIRTY FOUR", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "35", title: "THIRTY FIVE", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/5.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "36", title: "THIRTY SIX", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/6.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "37", title: "THIRTY SEVEN", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/7.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "38", title: "THIRTY EIGHT", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/8.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "39", title: "THIRTY NINE", numberList: [Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/9.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "40", title: "FORTY", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/alphabets/O.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "41", title: "FORTY ONE", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/1.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "42", title: "FORTY TWO", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/2.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "43", title: "FORTY THREE", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/3.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "44", title: "FORTY FOUR", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "45", title: "FORTY FIVE", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/5.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "46", title: "FORTY SIX", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/6.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "47", title: "FORTY SEVEN", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/7.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "48", title: "FORTY EIGHT", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/8.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "49", title: "FORTY NINE", numberList: [Image.asset("assets/images/dataset/numbers/4.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/numbers/9.jpg", height: 80, width: 80,)], titleList: []),
    NumbersParticularDataClass(number: "50", title: "FIFTY", numberList: [Image.asset("assets/images/dataset/numbers/5.jpg", height: 80, width: 80,), Image.asset("assets/images/dataset/alphabets/O.jpg", height: 80, width: 80,)], titleList: []),
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



  void charToImgListFun(){
    if(numbersParticularGridList[index].titleList.length == 0){
      String abc = numbersParticularGridList[index].title.toString();
      for(int i=0;i<abc.length;i++){
        for(int j=0;j<charToImg.length;j++){
          if(charToImg[j].character == abc[i]){
            numbersParticularGridList[index].titleList.add(charToImg[j].image);
          }
        }
      }
    }
  }



  @override
  void initState() {
    super.initState();
    index= widget.numbersGridListIndex;
    charToImgListFun();
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
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(numbersParticularGridList[index].number + " - ", style: const TextStyle(fontSize: 60, color: Colors.white,),),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for(int i=0;i<numbersParticularGridList[index].numberList.length;i++) ...[
                                    numbersParticularGridList[index].numberList[i],
                                    const VerticalDivider(width: 10,),
                                  ]
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(numbersParticularGridList[index].title, style: const TextStyle(fontSize: 35, color: Colors.white,),),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                for(int i=0;i<numbersParticularGridList[index].titleList.length;i++)
                                  Container(
                                    margin: const EdgeInsets.all(10),
                                    width: 60,
                                    height: 60,
                                    child: numbersParticularGridList[index].titleList[i],
                                  ),
                              ],
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
                    Text(numbersParticularGridList[index].number, style: const TextStyle(fontSize: 80, color: Colors.white,),),
                    InkWell(
                      child: Image.asset("assets/images/icons/next.png", width: 64, height: 64,),
                      onTap: (){
                        setState(() {
                          if(index!=25){
                            ++index;
                            charToImgListFun();
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
