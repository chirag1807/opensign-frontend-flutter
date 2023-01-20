import 'package:flutter/material.dart';
import 'package:signbase/data_classes/AlphabetsGridDataClass.dart';
import 'package:signbase/particular_classes/NumbersParticular.dart';

class NumbersGridMenu extends StatefulWidget{
  const NumbersGridMenu({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NumbersGridMenuState();
  }

}

class NumbersGridMenuState extends State<NumbersGridMenu>{

  List numbersGridList = [];
  @override
  void initState() {
    super.initState();
    for(int i=1;i<51;i++){
      numbersGridList.add(AlphabetsGridDataClass(text: i.toString()));
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
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff5f38fa), width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xd96c48ff),
                ),
                child: const Text("Numbers", style: TextStyle(fontSize: 35, color: Colors.white),),
                ),
            ),
              const Expanded(
                flex: 0,
                  child: Divider(height: 10,)
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  height: 500,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff5f38fa), width: 2),
                    color: const Color(0xd96c48ff),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: GridView.builder(
                    itemCount: numbersGridList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 6.0,
                        crossAxisSpacing: 6.0
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NumbersParticular(numbersGridListIndex: index,)));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff5f38fa), width: 2),
                              color: const Color(0xfffdf4f1)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(numbersGridList[index].text, style: const TextStyle(fontSize: 30),),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

}