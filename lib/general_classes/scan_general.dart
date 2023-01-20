import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../data_classes/CharToImageDataClass.dart';

class ScanGeneral extends StatefulWidget{
  const ScanGeneral({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ScanGeneralState();
  }

}

class ScanGeneralState extends State<ScanGeneral>{
  XFile? imgFile;
  List selectedCharToImg = [];
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff6C48FF),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Object Detection', style: TextStyle(
                  fontFamily: 'Martel',
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),
              ),
              VerticalDivider(width: 7,),
              Icon(Icons.image_search, color: Colors.white, size: 30,)
            ],
          )

      ),
      body: Container(
        color: const Color(0x1a7c94ea),
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: 270,
                margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
                decoration: BoxDecoration(
                    color: const Color(0xd96c48ff),
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xd96c48ff),
                          offset: Offset(1.5, 3)
                      ),
                      BoxShadow(
                          color: Color(0xd96c48ff),
                          offset: Offset(-1.5, -3)
                      ),
                    ]
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Object Image", style: TextStyle(fontSize: 25, color: Colors.white),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                imgFile != null ?
                                InkWell(
                                  child: Image.asset("assets/images/icons/cross_close.png", width: 20, height: 20,),
                                  onTap: (){
                                    imgFile = null;
                                    setState(() { });
                                  },
                                ):
                                const Text(""),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: imgFile != null ?
                        Container(
                            child: Image.file(File(imgFile!.path),
                              fit: BoxFit.fill,)
                        ) :
                        Container(
                            alignment: Alignment.center,
                            child: Image.asset("assets/images/icons/picture.png", width: 200, height: 200,)
                        ),
                      ),
                    )
                  ],
                )
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: 120,
                margin: const EdgeInsets.only(top: 25, left: 30, right: 30),
                decoration: BoxDecoration(
                    color: const Color(0xd96c48ff),
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xd96c48ff),
                          offset: Offset(0, 3)
                      ),
                    ]
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Output", style: TextStyle(fontSize: 25, color: Colors.white),),
                          SizedBox(
                            width: 130,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  child: const Icon(Icons.share, color: Colors.white, size: 26,),
                                  onTap: (){
                                    shareImg();
                                  },
                                ),
                                InkWell(
                                  child: const Icon(Icons.copy, color: Colors.white, size: 26,),
                                  onTap: () async {
                                    // var data = await rootBundle.load('assets/images/icons/back.png');
                                    await saveImage();
                                  },
                                ),
                                InkWell(
                                  child: Image.asset("assets/images/icons/cross_close.png", width: 20, height: 20,),
                                  onTap: (){
                                    selectedCharToImg.clear();
                                    setState(() { });
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    selectedCharToImg.isNotEmpty ?
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
                        child: rowSignOutput()
                      ),
                    ) :
                        Text("")
                  ],
                ),
              ),
            ),
            // Image.asset("assets/images/dataset/alphabets/A.jpg", width: 100, height: 100,),
            // const VerticalDivider(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: (){

                          getImage(ImageSource.camera);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xd96c48ff),
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12.0)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text("Camera", style: TextStyle(fontSize: 20),),
                            Icon(Icons.camera_alt_outlined)
                          ],
                        )
                    ),
                    ElevatedButton(
                        onPressed: (){
                          getImage(ImageSource.gallery);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xd96c48ff),
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12.0)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text("Gallery", style: TextStyle(fontSize: 20),),
                            Icon(Icons.image)
                          ],
                        )
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  void getImage(ImageSource imageSource) async {
    try{
      selectedCharToImg.clear();
      final pickedImage = await ImagePicker().pickImage(source: imageSource);
      if(pickedImage != null){
        setState(() {
          imgFile = pickedImage;
        });
        getImageLabels(imgFile!);
      }
    }catch(e){
      setState(() {
        imgFile = null;
      });
    }
  }

  void getImageLabels(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    ImageLabeler imageLabeler =
    ImageLabeler(options: ImageLabelerOptions(confidenceThreshold: 0.75));
    List<ImageLabel> labels = await imageLabeler.processImage(inputImage);
    String sb = labels[0].label;
    imageLabeler.close();
    textToSign(sb);
    setState(() {});
  }

  void textToSign(String sb){
    sb = sb.toUpperCase();
    for(int i=0;i<sb.length;i++){
      for(int j=0;j<charToImg.length;j++){
        if(charToImg[j].character == sb[i]){
          // CharToImageDataClass(character: "A", image: Image.asset("assets/images/dataset/alphabets/A.jpg")),
          selectedCharToImg.add(CharToImageDataClass(character: sb[i], image: charToImg[j].image));
        }
      }
    }
  }

  Future<String> saveImage() async{
    if(selectedCharToImg.isNotEmpty){
      final controller = ScreenshotController();
      final bytes = await controller.captureFromWidget(rowSignOutput());
      await [Permission.storage].request();
      final time = DateTime.now().toIso8601String().replaceAll('.', '-').replaceAll(':', '-');
      final name = "SignLangOutput_$time";
      final result = await ImageGallerySaver.saveImage(bytes, name: name);
      print(result['filePath']);
      return result['filePath'];
    }
    else{
      return "";
    }
  }

  Future shareImg() async {
    if(selectedCharToImg.isNotEmpty){
      final controller = ScreenshotController();
      final bytes = await controller.captureFromWidget(rowSignOutput());
      final directory = await getApplicationDocumentsDirectory();
      final image = File('${directory.path}/flutter.png');
      image.writeAsBytesSync(bytes);

      await Share.shareFiles([image.path]);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Enter Text First")));
    }
  }

  Widget rowSignOutput() => ListView.separated(
    separatorBuilder: (BuildContext context, int index){
      return Container(width: 10,);
    },
    scrollDirection: Axis.horizontal,
    itemCount: selectedCharToImg.length,
    itemBuilder: (BuildContext context, int index){
      return Column(
        children: [
          selectedCharToImg[index].image,
          Text(selectedCharToImg[index].character, style: TextStyle(fontSize: 25),)
        ],
      );
    },
  );
}
