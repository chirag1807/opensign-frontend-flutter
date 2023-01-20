import 'package:flutter/material.dart';
import '../CharToImageClass.dart';

class DomesticAnimalsGridMenu extends StatefulWidget{
  final int indicator;
  final int limitIndex;
  const DomesticAnimalsGridMenu({Key? key, required this.indicator, required this.limitIndex}) : super(key: key);

  @override
  State<DomesticAnimalsGridMenu> createState() => _DomesticAnimalsGridMenuState();
}

class _DomesticAnimalsGridMenuState extends State<DomesticAnimalsGridMenu> {

  late int limitIndex;
  List charToImg = CharToImageClass.charToImg;
  late int index;
  late String abc;
  late List generalGridList;

  void charToImgListFun(){
    if(generalGridList[index].imageList.length == 0){
      abc = generalGridList[index].title.toString().toUpperCase();
      for(int i=0;i<abc.length;i++){
        for(int j=0;j<charToImg.length;j++){
          if(charToImg[j].character == abc[i]){
            generalGridList[index].imageList.add(charToImg[j].image);
          }
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    index = 0;
    switch(widget.indicator){
      case 0:
        generalGridList = CharToImageClass.domesticAnimGridList;
        break;
      case 1:
        generalGridList = CharToImageClass.wildAnimGridList;
        break;
      case 2:
        generalGridList = CharToImageClass.waterAnimGridList;
        break;
      case 3:
        generalGridList = CharToImageClass.birdsGridList;
        break;
      case 4:
        generalGridList = CharToImageClass.vegesGridList;
        break;
      case 5:
        generalGridList = CharToImageClass.fruitsGridList;
        break;
      case 6:
        generalGridList = CharToImageClass.flowersGridList;
        break;
      case 7:
        generalGridList = CharToImageClass.vehiclesGridList;
        break;
      case 8:
        generalGridList = CharToImageClass.musicInstGridList;
        break;
      case 9:
        generalGridList = CharToImageClass.gadgetsGridList;
        break;
      case 10:
        generalGridList = CharToImageClass.shapesGridList;
        break;
      case 11:
        generalGridList = CharToImageClass.colorsGridList;
        break;
      case 12:
        generalGridList = CharToImageClass.seasonsGridList;
        break;
      case 13:
        generalGridList = CharToImageClass.relativesGridList;
        break;
      default:
        generalGridList = CharToImageClass.relativesGridList;
    }
    limitIndex = widget.limitIndex;
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 256,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: generalGridList[index].image,
                    ),
                    Text(generalGridList[index].title, style: const TextStyle(fontSize: 40, color: Colors.white),),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for(int i=0;i<generalGridList[index].imageList.length;i++)
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              child: generalGridList[index].imageList[i],
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
                    Container(
                      width: 115,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff5f38fa), width: 2),
                      ),
                      child: generalGridList[index].image,
                    ),
                    InkWell(
                      child: Image.asset("assets/images/icons/next.png", width: 64, height: 64,),
                      onTap: (){
                        setState(() {
                          if(index!=limitIndex){
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