import 'package:flutter/material.dart';
import 'package:signbase/grid_menu_classes/AlphabetsGridMenu.dart';
import 'package:signbase/grid_menu_classes/DomesticAnimalGridMenu.dart';
import 'package:signbase/data_classes/LearningGenDataClass.dart';
import 'package:signbase/grid_menu_classes/MonthsGridMenu.dart';
import 'package:signbase/grid_menu_classes/NumbersGridMenu.dart';
import 'package:signbase/grid_menu_classes/WeeksGridMenu.dart';

class LearningGeneral extends StatefulWidget{
  const LearningGeneral({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LearningGeneralState();
  }

}

class LearningGeneralState extends State<LearningGeneral>{

  List learningDataItems = [
    LearningGeneralDataClass(objectCall: const AlphabetsGridMenu(title: "Alphabets",) ,title: "Alphabets", image: Image.asset("assets/images/dataset/alphabets/A.jpg"), text: "A"),
    LearningGeneralDataClass(objectCall: const NumbersGridMenu() ,title: "Numbers", image: Image.asset("assets/images/dataset/numbers/1.jpg"), text: "1"),
    LearningGeneralDataClass(objectCall: const MonthsGridMenu() ,title: "Months", image: Image.asset("assets/images/dataset/alphabets/J.jpg"), text: "January"),
    LearningGeneralDataClass(objectCall: const WeeksGridMenu() ,title: "Weeks", image: Image.asset("assets/images/dataset/alphabets/M.jpg"), text: "Monday"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 0, limitIndex: 11,), title: "Domestic Animals", image: Image.asset("assets/images/dataset/alphabets/B.jpg"), text: "Buffalo"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 1, limitIndex: 10,), title: "Wild Animals", image: Image.asset("assets/images/dataset/alphabets/B.jpg"), text: "Beer"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 2, limitIndex: 7,), title: "Water Animals", image: Image.asset("assets/images/dataset/alphabets/C.jpg"), text: "Crab"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 3, limitIndex: 10,), title: "Birds", image: Image.asset("assets/images/dataset/alphabets/C.jpg"), text: "Crow"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 4, limitIndex: 14,), title: "Vegetables", image: Image.asset("assets/images/dataset/alphabets/B.jpg"), text: "Brinjal"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 5, limitIndex: 14,), title: "Fruits", image: Image.asset("assets/images/dataset/alphabets/A.jpg"), text: "Apple"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 6, limitIndex: 11,), title: "Flowers", image: Image.asset("assets/images/dataset/alphabets/A.jpg"), text: "Aster"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 7, limitIndex: 11,), title: "Vehicles", image: Image.asset("assets/images/dataset/alphabets/A.jpg"), text: "Aeroplane"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 8, limitIndex: 13,), title: "Musical Instruments", image: Image.asset("assets/images/dataset/alphabets/A.jpg"), text: "Accordion"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 9, limitIndex: 4,), title: "Gadgets", image: Image.asset("assets/images/dataset/alphabets/C.jpg"), text: "Camera"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 10, limitIndex: 7,), title: "Shapes", image: Image.asset("assets/images/dataset/alphabets/C.jpg"), text: "Circle"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 11, limitIndex: 9,), title: "Colours", image: Image.asset("assets/images/dataset/alphabets/B.jpg"), text: "Black"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 12, limitIndex: 2,), title: "Seasons", image: Image.asset("assets/images/dataset/alphabets/W.jpg"), text: "Winter"),
    LearningGeneralDataClass(objectCall: const DomesticAnimalsGridMenu(indicator: 13, limitIndex: 13,), title: "Relatives", image: Image.asset("assets/images/dataset/alphabets/M.jpg"), text: "Mother")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff6C48FF),
          automaticallyImplyLeading: false,
          title: Row(

            children:const [
              Text('Learning', style: TextStyle(
                  fontFamily: 'Martel',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),
              ),
            ],
          )

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0x1a7c94ea),
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: learningDataItems.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => learningDataItems[index].objectCall));
                },
                child: Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: const Color(0xd96c48ff),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff5f38fa),
                          offset: Offset(-3, -3)
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(learningDataItems[index].title, style: const TextStyle(fontSize: 35, color: Colors.white),),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: learningDataItems[index].image,
                          ),
                          const Text("  -  ", style: TextStyle(fontSize: 35, color: Colors.white),),
                          Text(learningDataItems[index].text, style: const TextStyle(fontSize: 30, color: Colors.white),),

                        ],
                      )
                    ],
                  ),
                ),
              );
            }
        )
      ),
    );
  }

}

