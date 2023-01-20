import 'package:flutter/material.dart';
import 'package:signbase/data_classes/AlphabetsParticularDataClass.dart';
import 'package:signbase/data_classes/CharToImageDataClass.dart';

class AlphabetsParticular extends StatefulWidget{
  const AlphabetsParticular({Key? key, required this.alphabetsGridListIndex}) : super(key: key);
  final int alphabetsGridListIndex;
  @override
  State<StatefulWidget> createState() {
    return AlphabetsParticularState();
  }

}

class AlphabetsParticularState extends State<AlphabetsParticular>{

  late int index;
  late String abc;
  void charToImgListFun(){
    if(alphabetsParticularGridList[index].imageList.length == 0){
      abc = alphabetsParticularGridList[index].title.toString().toUpperCase();
      for(int i=0;i<abc.length;i++){
        for(int j=0;j<charToImg.length;j++){
          if(charToImg[j].character == abc[i]){
            alphabetsParticularGridList[index].imageList.add(charToImg[j].image);
          }
        }
      }
    }
  }

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


  List alphabetsParticularGridList = [
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/aeroplane.png"), title: "Aeroplane", imageList: [], character: "A"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/ball.png"), title: "ball", imageList: [], character: "B"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/cat.png"), title: "Cat", imageList: [], character: "C"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/dog.png"), title: "Dog", imageList: [], character: "D"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/elephant.png"), title: "Elephant", imageList: [], character: "E"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/fan.png"), title: "Fan", imageList: [], character: "F"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/goat.png"), title: "Goat", imageList: [], character: "G"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/hen.png"), title: "Hen", imageList: [], character: "H"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/ice_cream.png"), title: "Ice-Cream", imageList: [], character: "I"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/jug.png"), title: "Jug", imageList: [], character: "J"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/kite.png"), title: "Kite", imageList: [], character: "K"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/lion.png"), title: "Lion", imageList: [], character: "L"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/monkey.png"), title: "Monkey", imageList: [], character: "M"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/next.png"), title: "Next", imageList: [], character: "N"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/owl.png"), title: "Owl", imageList: [], character: "O"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/pen.png"), title: "Pen", imageList: [], character: "P"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/quill.png"), title: "Quill", imageList: [], character: "Q"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/rose.png"), title: "Rose", imageList: [], character: "R"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/sun.png"), title: "Sun", imageList: [], character: "S"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/tea.png"), title: "Tea", imageList: [], character: "T"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/umbrella.png"), title: "Umbrella", imageList: [], character: "U"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/vas.png"), title: "Vas", imageList: [], character: "V"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/whistle.png"), title: "Whistle", imageList: [], character: "W"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/xchristmas.png"), title: "Christmas", imageList: [], character: "X"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/yacht.png"), title: "Yacht", imageList: [], character: "Y"),
    AlphabetsParticularDataClass(image: Image.asset("assets/images/images_alphabets/zebra.png"), title: "Zebra", imageList: [], character: "Z"),
  ];


  @override
  void initState() {
    super.initState();
    index = widget.alphabetsGridListIndex;

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
        width: double.infinity,
        height: double.infinity,
        color: const Color(0x1a7c94ea),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 256,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: alphabetsParticularGridList[index].image,
                    ),
                    Text(alphabetsParticularGridList[index].title, style: const TextStyle(fontSize: 40, color: Colors.white),),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for(int i=0;i<alphabetsParticularGridList[index].imageList.length;i++)
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              child: alphabetsParticularGridList[index].imageList[i],
                            ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                    Text(alphabetsParticularGridList[index].character, style: const TextStyle(fontSize: 80, color: Colors.white,),),
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
      ),

    );
  }

}