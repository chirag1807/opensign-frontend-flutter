import 'package:flutter/material.dart';
import 'package:signbase/data_classes/AlphabetsGridDataClass.dart';
import 'package:signbase/particular_classes/AlphabetsParticular.dart';

class AlphabetsGridMenu extends StatefulWidget{
  final String title;
  const AlphabetsGridMenu({Key? key, required this.title}) : super(key: key);

  @override
  State<AlphabetsGridMenu> createState() => _AlphabetsGridMenuState();
}

class _AlphabetsGridMenuState extends State<AlphabetsGridMenu> {
  @override
  Widget build(BuildContext context) {

    List alphabetsGridList = [
      AlphabetsGridDataClass(text: "A", image: Image.asset("assets/images/dataset/alphabets/A.jpg")),
      AlphabetsGridDataClass(text: "B", image: Image.asset("assets/images/dataset/alphabets/B.jpg")),
      AlphabetsGridDataClass(text: "C", image: Image.asset("assets/images/dataset/alphabets/C.jpg")),
      AlphabetsGridDataClass(text: "D", image: Image.asset("assets/images/dataset/alphabets/D.jpg")),
      AlphabetsGridDataClass(text: "E", image: Image.asset("assets/images/dataset/alphabets/E.jpg")),
      AlphabetsGridDataClass(text: "F", image: Image.asset("assets/images/dataset/alphabets/F.jpg")),
      AlphabetsGridDataClass(text: "G", image: Image.asset("assets/images/dataset/alphabets/G.jpg")),
      AlphabetsGridDataClass(text: "H", image: Image.asset("assets/images/dataset/alphabets/H.jpg")),
      AlphabetsGridDataClass(text: "I", image: Image.asset("assets/images/dataset/alphabets/I.jpg")),
      AlphabetsGridDataClass(text: "J", image: Image.asset("assets/images/dataset/alphabets/J.jpg")),
      AlphabetsGridDataClass(text: "K", image: Image.asset("assets/images/dataset/alphabets/K.jpg")),
      AlphabetsGridDataClass(text: "L", image: Image.asset("assets/images/dataset/alphabets/L.jpg")),
      AlphabetsGridDataClass(text: "M", image: Image.asset("assets/images/dataset/alphabets/M.jpg")),
      AlphabetsGridDataClass(text: "N", image: Image.asset("assets/images/dataset/alphabets/N.jpg")),
      AlphabetsGridDataClass(text: "O", image: Image.asset("assets/images/dataset/alphabets/O.jpg")),
      AlphabetsGridDataClass(text: "P", image: Image.asset("assets/images/dataset/alphabets/P.jpg")),
      AlphabetsGridDataClass(text: "Q", image: Image.asset("assets/images/dataset/alphabets/Q.jpg")),
      AlphabetsGridDataClass(text: "R", image: Image.asset("assets/images/dataset/alphabets/R.jpg")),
      AlphabetsGridDataClass(text: "S", image: Image.asset("assets/images/dataset/alphabets/S.jpg")),
      AlphabetsGridDataClass(text: "T", image: Image.asset("assets/images/dataset/alphabets/T.jpg")),
      AlphabetsGridDataClass(text: "U", image: Image.asset("assets/images/dataset/alphabets/U.jpg")),
      AlphabetsGridDataClass(text: "V", image: Image.asset("assets/images/dataset/alphabets/V.jpg")),
      AlphabetsGridDataClass(text: "W", image: Image.asset("assets/images/dataset/alphabets/W.jpg")),
      AlphabetsGridDataClass(text: "X", image: Image.asset("assets/images/dataset/alphabets/X.jpg")),
      AlphabetsGridDataClass(text: "Y", image: Image.asset("assets/images/dataset/alphabets/Y.jpg")),
      AlphabetsGridDataClass(text: "Z", image: Image.asset("assets/images/dataset/alphabets/Z.jpg")),
    ];

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
        padding: const EdgeInsets.all(15),
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
                child: Text(widget.title, style: const TextStyle(fontSize: 35, color: Colors.white),),
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
                itemCount: alphabetsGridList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 6.0,
                              crossAxisSpacing: 6.0
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AlphabetsParticular(alphabetsGridListIndex: index)));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff5f38fa), width: 2),
                          color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(alphabetsGridList[index].text, style: const TextStyle(fontSize: 25, color: Colors.black),),
                          const Text("  -  ", style: TextStyle(fontSize: 30),),
                          Container(
                            width: 35,
                            height: 35,
                            child: alphabetsGridList[index].image,
                          )
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